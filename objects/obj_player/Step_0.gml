//Spawn
if (spawning) {
	if (instance_exists(obj_spawner)) {
		spawning = false;
		scr_player_spawn();
	}
} else {
	//Action states
	scr_plr_action_state();
}