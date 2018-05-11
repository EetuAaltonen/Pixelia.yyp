if (global.hudState == "inventoryBackpack" ||
	global.hudState == "inventoryEquipments" ||
	string_pos("shop", string(global.hudState)) ||
	string_pos("stash", string(global.hudState)) ||
	scr_hud_state_some_of_crafting()) {
	
	if (instance_exists(obj_search_box)) {
		if (obj_search_box.selected) {
			return false;
		}
	}
	return true;
}
return false;