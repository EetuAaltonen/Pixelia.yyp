if (action != "null") {
	switch(action) {
		case "load": {
			///Click
			if (instance_exists(obj_search_box)) {
				if (image_blend != make_colour_hsv(0, 0, 150)) {
				    scr_menu_load_create_save();
				}
			}
		}break;
		case "delete": {
			///Delete Exists Save
			if (instance_exists(obj_search_box)) {
				if (image_blend != make_colour_hsv(0, 0, 150)) {
				    file = (string(obj_search_box.txt) + ".sav");
				    if (file_exists(file)) {
				        scr_set_popup(vk_enter, vk_escape, "Delete " + file + "?", scr_delete_selected_game);
				    }
				}
			}
		}break;
		case "resolution": {
			if (resolution != "null") {
				scr_resolution(resolution[0], resolution[1]);
			}
		}break;
		case "quit": {
			game_end();
		}break;
		default: {
			var controller = obj_screen_controller;
			if (controller.menuState != action) {
				controller.menuState = action;
				controller.createButtons = true;
			}
		}break;
	}
}