if (scr_interact_with_player()) {
	global.hudState = HudStates.Minigame;
    obj_player.actionState = Actions.Fishing;
    instance_create(obj_player.x, obj_player.y, obj_fishing_bobber);
}

if (instance_exists(obj_player)) {    
    visible = (obj_player.actionState != Actions.Fishing);
}

