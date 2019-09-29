//scr_item_info_struct()

//Toggle equipped
if (equipmentIndex != undefined) {
	//Unequip
	if (equipmentIndex > -1) {
		global.equipment[equipmentIndex] = "";
		
		scr_listed_equipment_update_status(equipmentIndex);
		
		equipmentIndex = -1;
		if (data[ItemData.Effect] != "null") {
			//Remove buff
			scr_plr_effects_remove(data[ItemData.Effect]);
			//Check if some equipment's effect turn on
			scr_plr_effects_in_queue();
		}
		//Add Toast
		scr_add_new_toast(data[ItemData.Name] + " unequipped");
	//Equip
	} else {
		var index = scr_listed_item_get_equipment_type(data);
		if (index > -1) {
			if (global.equipment[index] == "") {
				if (data[ItemData.Effect] != "null") {
					//Add buff
					scr_plr_effects_add(data[ItemData.Effect], data[ItemData.EffectAmount], data[ItemData.EffectDuration]);
				}
				scr_listed_item_equip(index);
			} else if (!scr_item_compare_items(global.equipment[index], data, "full")) {
				if (data[ItemData.Effect] != "null") {
					//Add buff
					scr_plr_effects_add(data[ItemData.Effect], data[ItemData.EffectAmount], data[ItemData.EffectDuration]);
				}
				scr_listed_item_equip(index);
			}
		}
	}
}