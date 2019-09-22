if (!global.popUp) {
	if (action != "null") {
		switch (action) {
			case MenuActions.Load: {
				// Click
				if (instance_exists(obj_search_box)) {
					if (!scr_highlighted()) {
					    scr_menu_load_create_save();
					}
				}
			}break;
			case MenuActions.Delete: {
				// Delete Exists Save
				if (instance_exists(obj_search_box)) {
					if (!scr_highlighted()) {
					    file = (string(obj_search_box.txt) + ".sav");
					    if (file_exists(file)) {
					        scr_set_popup(vk_enter, vk_escape, "Delete " + file + "?", scr_delete_selected_game);
					    }
					}
				}
			}break;
			case MenuActions.Resolution: {
				if (resolution != "null") {
					scr_resolution(resolution[0], resolution[1]);
				}
			}break;
			case MenuActions.Quit: {
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
}