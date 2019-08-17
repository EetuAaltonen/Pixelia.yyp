global.hudState = argument0;

global.hudCanClose = false;
if (instance_exists(obj_player)) {
	if (global.hudState != HudStates.Minigame) {
		obj_player.actionState = Actions.Null;
	}
}