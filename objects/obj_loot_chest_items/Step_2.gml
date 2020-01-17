if (scr_interact_with_player() && (state == Container.Uninit || state == Container.Closed)) {
	// Start opening
	scr_highlight_remove();
	if (state == Container.Uninit) {
		state = Container.Opening;
		items = scr_loot_table_drop_loot(lootTables);
		image_index = 0;
		image_speed = 0.8;
		
		partEffCount = 10;
		partEffIndx = 0;
	} else {
		image_index = (image_number-1);
		state = Container.Opened;
	}
} else if (state == Container.Opening && floor(image_index) == (image_number-1)) {
	// Trigger particle effects
	state = Container.Particles;
	image_speed = 0;
	alarm[0] = partEffDelay;
} else if (state == Container.Opened && global.hudState != HudStates.Loot) {
	// Open
	scr_loot_chest_open(items, HudStates.Loot);
	
	obj_player.actionState = Actions.Loot;
	global.hudState = HudStates.Loot;
} else if (state == Container.Opened && updateValues) {
	updateValues = false;
	scr_inventory_update_list(items);
}  else if (global.hudState == HudStates.Loot &&
			state == Container.Opened &&
			scr_keys_to_close()) {
	//Close
	state = Container.Closed;
	image_index = 0;
	depth = Depth.Interaction;
	
	if (ds_list_size(items) <= 0) {
		state = Container.Empty;
		image_index = (image_number-1);
	}
	scr_highlight_remove();
	scr_listed_item_remove();
	global.hudState = HudStates.Null;
	scr_plr_set_action_state_null();
}