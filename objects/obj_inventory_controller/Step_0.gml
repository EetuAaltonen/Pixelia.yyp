// Auto-healing
if (global.auto_healing == 1
    && global.potions > 0
    && global.healthPoints < 5) {
    global.potions -= 1;
    global.healthPoints += 10;
}

// Open Inventory
if (keyboard_check_released(vk_tab) &&
	global.hudState == HudStates.Null &&
	global.hudCanToggle) {
	if (instance_exists(obj_player)) {
	    if (scr_plr_neutral_action_states()) {
			global.hudCanToggle = false;
			scr_inventory_open();
	    }
	}
} else if (scr_keys_to_close(HudStates.Inventory)) {
	scr_inventory_close();
}

// Page change
scr_page_change();

// Update values of listed items
scr_inventory_update_values();