if (scr_plr_neutral_action_states() &&
		image_blend != make_colour_hsv(0, 0, 255) &&
		keyboard_check_pressed(ord("E")) &&
		global.hudState == "null") {
	if (instance_exists(obj_use)) {
	    with (obj_use) instance_destroy();
	}
	return true;
}
return false;