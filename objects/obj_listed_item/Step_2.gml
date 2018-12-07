//Check if equipped
/*if (string_pos("inventoryEquipments", type)) {
	if (ds_list_find_index(global.equipments, spriteName) != -1) {
		equipped = true;
	} else {
		equipped = false;
	}
}*/

//Check if selected
if (selected && instance_exists(obj_crafting_slot)) {
	image_alpha = 0.5;
} else {
	image_alpha = 1;
	selected = false;	
}