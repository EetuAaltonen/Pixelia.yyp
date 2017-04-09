///Check if equipped
if (string_pos("inventoryEquipments", type)) {
	if (ds_list_find_index(global.equipments, spriteName) != -1) {
		equipped = true;
	} else {
		equipped = false;
	}
}