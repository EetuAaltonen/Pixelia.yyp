if (scr_interact_with_player() && (state == Container.Uninit || state == Container.Closed)) {
	// Start opening
	if (state == Container.Uninit) {
		image_index = 0;
		image_speed = 0.8;
		items = scr_loot_chest_get_items(lootType);
		partEffCount = 10;
		partEffIndx = 0;
		
		state = Container.Opening;
	} else {
		image_index = (image_number-1);
		state = Container.Opened;
	}
	scr_highlight_remove();
} else if (state == Container.Opening && floor(image_index) == (image_number-1)) {
	// Trigger particle effects
	state = Container.Particles;
	image_speed = 0;
	alarm[0] = partEffDelay;
} else if (state == Container.Opened && global.hudState != HudStates.Loot) {
	// Open
	scr_loot_chest_open(items);
	
	obj_player.actionState = Actions.Loot;
	global.hudState = HudStates.Loot;
}  else if (state == Container.Opened && scr_stop_interact_with_player()) {
	//Close
	state = Container.Closed;
	image_index = 0;
	
	if (ds_list_size(items) <= 0) {
		state = Container.Empty;
		image_index = (image_number-1);
	}
	
	scr_highlight_remove();
	scr_listed_item_remove();
	global.hudState = HudStates.Null;
	scr_plr_set_action_state_null();
}