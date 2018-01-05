/// @description Key Pressed / Spawning

//Spawn
if (spawning) {
	if (instance_exists(obj_spawner)) {
		spawning = false;
		scr_player_spawn();
	}
} else {
	//Use
	if (keyboard_check_pressed(ord("E"))) {
		if (global.hudState == "null") {
		    if (scr_plr__action_states) {
		        instance_create(x, y, obj_use);
		    }
		}

		///Reset action state
		if (!global.popUp) {
			if (actionState == "mining" ||
			    actionState == "woodcutting" ||
			    actionState == "sitting" ||
			    actionState == "fishing") {
			    scr_plr_set_action_state_null();
			}
		}	
	}
	
	//Action states
	scr_plr_action_state();
}

//Slice
if (keyboard_check(ord("Q"))) {
	scr_plr_abi_start_slice();
}