/// @desc Player interaction check
/// @return Bool - If able to interact

if (keyboard_check_released(ord("E")) &&
	scr_highlighted() &&
	global.hudCanToggle &&
	scr_plr_neutral_action_states() &&
	global.hudState == HudStates.Null) {
	global.hudCanToggle = false;
	return true;
}
return false;