if (keyboard_check_pressed(ord("M"))) {
	if (global.hudState == "null") {
		scr_set_global_hudstate("map");
		scr_map_create_objects();
	} else if (global.hudState == "map") {
		scr_map_close();
	}
}