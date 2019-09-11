//Gravity
scr_custom_gravity();

if (!opened && scr_interact_with_player()) {
	//Open
	if (instance_exists(obj_player)) {
		obj_player.actionState = Actions.Loot;
		global.hudState = HudStates.Loot;
		image_index = 1;
		getLoot = true;
	    opened = true;
	}
} else if (opened && scr_stop_interact_with_player()) {
	//Close
	opened = false;
	image_index = 0;
	ds_list_clear(global.tempLoot);
	global.hudState = HudStates.Null;
	scr_plr_set_action_state_null();
}

if (opened && getLoot) {
	//Get loot
	var tempAmount = ds_list_size(global.tempLoot);
	var itemAmount = ds_list_size(items);
	if (tempAmount != itemAmount) {
		//Remove Listed Items
		scr_listed_item_remove();
	
		if (itemAmount > 0 && tempAmount > 0) {
			ds_list_clear(items);
			ds_list_copy(items, global.tempLoot);
			getLoot = false;
		
		} else {
			ds_list_clear(global.tempLoot);
			scr_plr_set_action_state_null();
			global.hudState = HudStates.Null;
			instance_destroy();
		}
	}	
}