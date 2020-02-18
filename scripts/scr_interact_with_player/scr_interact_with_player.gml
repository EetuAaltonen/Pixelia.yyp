/*
* @return bool
*/	

if (scr_plr_neutral_action_states() &&
	scr_highlighted() &&
	keyboard_check_pressed(ord("E")) &&
	global.hudState == HudStates.Null) {
	// TODO: Old logic when using obj_use
	if (instance_exists(obj_use)) {
	    with (obj_use) instance_destroy();
	}
	return true;
}
return false;