if (floor(image_index) == (image_number-2) && opened) {
	image_speed = 0;
	image_index++;
	partEffCount = 10;
	partEffIndx = 0;
	
	scr_highlight_remove();
	alarm[0] = partEffDelay;
} else if (!opened && scr_interact_with_player()) {
	//Open
	if (instance_exists(obj_player)) {
		opened = true;
		image_index = 0;
		image_speed = 0.8;
		if (initLoot) {
			items = scr_loot_chest_get_items(lootType);
		}
		
		obj_player.actionState = "looting";
	}
}  else if (opened && scr_stop_interact_with_player()) {
	//Close
	opened = false;
	
	scr_listed_item_remove();
	global.hudState = "null";
	scr_plr_set_action_state_null();
}