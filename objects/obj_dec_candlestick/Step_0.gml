if (global.hudState == HudStates.Null && obj_screen_controller.darknessEffect) {
	if (depth != (obj_screen_controller.depth - 1)) {
		depth = (obj_screen_controller.depth - 1);
	}
	if (image_blend != make_colour_hsv(0, 0, 100)) {
		image_blend = make_colour_hsv(0, 0, 100);	
	}
} else {
	if (depth != tempDepth) {
		depth = tempDepth
	}	
	if (scr_highlighted()) {
		image_blend= scr_highlight_default_value();	
	}
}
/*surface_set_target(light);
draw_set_color(c_ltgray);
draw_rectangle(0,0,view_wview,view_hview,false);
surface_reset_target();