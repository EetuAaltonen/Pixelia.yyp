return (scr_plr_neutral_action_states() &&
		image_blend != make_colour_hsv(0, 0, -1) &&
		keyboard_check_pressed(ord("E")) &&
		global.hudState == "null")