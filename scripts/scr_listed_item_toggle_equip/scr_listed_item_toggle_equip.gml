//scr_item_info_struct()

//Toggle equipped
if (equipmentIndex != "") {
	//Unequip
	if (equipmentIndex > -1) {
		global.equipments[equipmentIndex] = "";
		equipmentIndex = -1;
		//Remove buff
		scr_plr_effects_remove(data[7]);
		//Check if some equipment's effect turn on
		scr_plr_effects_in_queue();
		//Add Toast
		scr_add_new_toast(data[1] + " unequipped");
	//Equip
	} else {
		var index = scr_listed_item_get_equipment_type(data);
		if (index > -1) {
			if (global.equipments[index] == "") {
				//Add buff
				scr_plr_effects_add(data[7], data[8], data[9]);
				
				scr_listed_item_equip(index);
			} else if (!scr_item_compare_items(global.equipments[index], data, "full")) {
				//Add buff
				scr_plr_effects_add(data[7], data[8], data[9]);
				
				scr_listed_item_equip(index);
			}
		}
	}
}