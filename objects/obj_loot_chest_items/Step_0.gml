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
	scr_set_global_hud_state(HudStates.Loot);
} else if (state == Container.Opened && updateValues) {
	if (ds_list_size(items) <= 0) {
		scr_loot_chest_close();	
	} else {
		updateValues = false;
		scr_inventory_update_list(items);
	}
}  else if (state == Container.Opened &&
			scr_keys_to_close(HudStates.Loot)) {	
	scr_loot_chest_close();
}