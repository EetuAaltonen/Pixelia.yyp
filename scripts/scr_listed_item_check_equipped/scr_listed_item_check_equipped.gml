var index = scr_listed_item_get_equipment_type(data);
if (index > -1) {
	equipmentIndex = -1;
	if (global.equipments[index] != "") {
		if (scr_item_compare_items(global.equipments[index], data, "full")) {
			equipmentIndex = index;
		}
	}
}