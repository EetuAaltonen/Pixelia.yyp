var hudState = argument0;
global.hudState = hudState;
if (instance_exists(obj_player)) {
	obj_player.actionState = "idle";	
}