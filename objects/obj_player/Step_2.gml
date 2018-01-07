/// @description Key Pressed
if (!spawning) {	
	//Action states
	scr_plr_action_state();
}

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
		    if (scr_plr_neutral_action_states()) {
		        instance_create(x, y, obj_use);
		    }
		}
	}
}

//Slice
if (keyboard_check(ord("Q"))) {
	scr_plr_abi_start_slice();
}