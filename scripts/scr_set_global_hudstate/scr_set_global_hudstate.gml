var hudState = argument0;
global.hudState = hudState;
if (instance_exists(obj_player)) {
	if (global.hudState != "minigame") {
		obj_player.actionState = "idle";
	}
}