/*
* @return bool
*/	

if (scr_plr_neutral_action_states() &&
	scr_highlighted() &&
	keyboard_check_released(ord("E")) &&
	global.hudState == HudStates.Null) {
	if (instance_exists(obj_use)) {
	    with (obj_use) instance_destroy();
	}
	return true;
}
return false;