if (!global.popUp) {
	if (action != "null") {
		switch (action) {
			case MenuAction.Load: {
				// Click
				if (instance_exists(obj_search_box)) {
					if (image_blend != scr_highlight_value()) {
					    scr_menu_load_create_save();
					}
				}
			}break;
			case MenuAction.Delete: {
				// Delete Exists Save
				if (instance_exists(obj_search_box)) {
					if (image_blend != scr_highlight_value()) {
					    file = (string(obj_search_box.txt) + ".sav");
					    if (file_exists(file)) {
					        scr_set_popup(vk_enter, vk_escape, "Delete " + file + "?", scr_delete_selected_game);
					    }
					}
				}
			}break;
			case MenuAction.Resolution: {
				if (resolution != "null") {
					// TODO: Resolution change unnecessary option?
				}
			}break;
			case MenuAction.Quit: {
				game_end();
			}break;
			default: {
				var controller = obj_menu_controller;
				if (controller.menuState != action) {
					controller.menuState = action;
					controller.createButtons = true;
				}
			}break;
		}
	}
}