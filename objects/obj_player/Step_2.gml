/// @description Key Pressed
//Spawn
if (spawning) {
	if (instance_exists(obj_spawner)) {
		spawning = false;
		scr_player_spawn();
		scr_custom_gravity();
	}
} else {
	if (global.hudState == HudStates.Null) {
		//Action states
		scr_plr_action_state();
	
		// Use
		// TODO: Remove old use logic
		/*if (keyboard_check_pressed(ord("E"))) {
			if (global.hudState == HudStates.Null) {
			    if (scr_plr_neutral_action_states()) {
			        instance_create(x, y, obj_use);
			    }
			}
		}*/
		//Slice
		if (mouse_check_button(mb_left)/*keyboard_check(ord("Q"))*/) {
			scr_plr_abi_start_slice();
		}
		//Shield
		else if (mouse_check_button(mb_right)/*keyboard_check(ord("W"))*/) {
			scr_plr_abi_shield();
		}
		//Roll
		else if (keyboard_check_pressed(ord("F"))) { //A
			scr_plr_abi_roll();
		}
		//Bow
		else if (keyboard_check_pressed(ord("B"))) { //S
			scr_plr_abi_bow_start();
		}
	} else {
		switch (actionState) {
			case Actions.Fishing: {
				scr_plr_fishing();
			}break;
			default: {
				hspeed = 0;
				//Gravity
				scr_custom_gravity();	
			}
		}
	}
}