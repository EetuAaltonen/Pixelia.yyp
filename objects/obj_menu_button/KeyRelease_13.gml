if (action != "null") {	
	switch (action) {
		case "load": {
			if (!global.popUp) {
				if (!scr_highlighted()) {
					scr_menu_load_create_save();
				}
			}
		}break;
	}
}