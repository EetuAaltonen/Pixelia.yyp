//Check if equipped
if (string_pos("inventoryEquipments", type)) {
	if (ds_list_find_index(global.equipments, spriteName) != -1) {
		equipped = true;
	} else {
		equipped = false;
	}
}

//Check if selected
if (selected && instance_exists(obj_crafting_slot)) {
	image_alpha = 0.5;
} else {
	image_alpha = 1;
	selected = false;	
}
/*
if (instance_exists(obj_crafting_slot_1) &&
	instance_exists(obj_crafting_slot_2) &&
	instance_exists(obj_crafting_slot_3)) {
	var slot1 = obj_crafting_slot_1;
	var slot2 = obj_crafting_slot_2;
	var slot3 = obj_crafting_slot_3;
	var spriteIndex = asset_get_index(spriteName);
	if (slot1.spriteIndex ==  spriteIndex ||
		slot2.spriteIndex ==  spriteIndex ||
		slot3.spriteIndex ==  spriteIndex) {
		image_alpha = 0.5;
		selected = true;
	} else {
		image_alpha = 1;
		selected = false;
	}
} else {
	image_alpha = 1;
	selected = false;
}