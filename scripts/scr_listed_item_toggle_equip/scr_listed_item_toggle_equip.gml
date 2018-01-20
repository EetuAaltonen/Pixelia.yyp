///Toggle equipped
if (equipmentIndex != "") {
	//Unequip
	if (equipmentIndex > -1) {
		global.equipments[equipmentIndex] = "";
		equipmentIndex = -1;
		
		obj_inventory_controller.buffsUpdate = true;
	//Equip
	} else {
		var index = scr_listed_item_get_equipment_type(data);
		if (index > -1) {
			if (global.equipments[index] == "") {
				scr_listed_item_equip(index);
			} else if (!scr_item_compare_items(global.equipments[index], data)) {
				scr_listed_item_equip(index);
			}
		}
	}
}