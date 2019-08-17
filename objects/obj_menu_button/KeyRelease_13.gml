if (action != "null") {	
	switch (action) {
		case "load": {
			if (!global.popUp) {
				if (image_blend != make_colour_hsv(0, 0, 150)) {
					scr_menu_load_create_save();
				}
			}
		}break;
	}
}