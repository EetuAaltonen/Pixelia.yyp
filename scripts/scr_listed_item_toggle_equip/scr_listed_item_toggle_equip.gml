//scr_item_info_struct()

//Toggle equipped
if (equipmentIndex != undefined) {
	//Unequip
	if (equipmentIndex > -1) {
		global.equipments[equipmentIndex] = "";
		
		scr_listed_equipment_update_status(equipmentIndex);
		
		equipmentIndex = -1;
		if (data[8] != "null") {
			//Remove buff
			scr_plr_effects_remove(data[8]);
			//Check if some equipment's effect turn on
			scr_plr_effects_in_queue();
		}
		//Add Toast
		scr_add_new_toast(data[1] + " unequipped");
	//Equip
	} else {
		var index = scr_listed_item_get_equipment_type(data);
		if (index > -1) {
			if (global.equipments[index] == "") {
				if (data[8] != "null") {
					//Add buff
					scr_plr_effects_add(data[8], data[9], data[10]);
				}
				scr_listed_item_equip(index);
			} else if (!scr_item_compare_items(global.equipments[index], data, "full")) {
				if (data[8] != "null") {
					//Add buff
					scr_plr_effects_add(data[8], data[9], data[10]);
				}
				scr_listed_item_equip(index);
			}
		}
	}
}