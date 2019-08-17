//Auto-healing
if (global.auto_healing == 1
    && global.potions > 0
    && global.healthPoints < 5) {
    global.potions -= 1;
    global.healthPoints += 10;
}

///Open Inventory
if (keyboard_check_pressed(vk_tab) &&
	global.hudState == HudStates.Null) {
	if (instance_exists(obj_player)) {
	    if (scr_plr_neutral_action_states()) {
			scr_inventory_open();
	    }
	}
} else if (global.hudState == HudStates.Inventory &&
			scr_keys_to_close()) {
	scr_inventory_close();
}

//Page change
scr_page_change();

//Update Values Of Listed Items
scr_inventory_update_values();