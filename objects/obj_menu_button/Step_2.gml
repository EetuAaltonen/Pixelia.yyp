// Move orbs when meeting mouse
if (distance_to_point(mouse_x, mouse_y) == 0) {
	if (instance_exists(obj_menu_orb_of_euphoria)) {
		if (obj_menu_orb_of_euphoria.target_y != y) {
			obj_menu_orb_of_euphoria.target_x = x + sprite_width/2 + 48;
			obj_menu_orb_of_euphoria.target_y = y;
			obj_menu_orb_of_euphoria.wave = 5;
		}
	}
	if (instance_exists(obj_menu_orb_of_dysforia)) {
		if (obj_menu_orb_of_dysforia.target_y != y) {
			obj_menu_orb_of_dysforia.target_x = x - sprite_width/2 - 48;
			obj_menu_orb_of_dysforia.target_y = y;
			obj_menu_orb_of_dysforia.wave = 5;
		}
	}
}
if (action != "null") {
	if (action == MenuActions.Load && keyboard_check_released(vk_enter)) {
		if (!global.popUp && !scr_highlighted()) {
			scr_menu_load_create_save();
		}
	} else if (checkSaveName) {
		checkSaveName = false;
		if (action == MenuActions.Delete) {
			// Check text length
			scr_check_exists_saves();
		} else if (action == MenuActions.Load) {
			// Check text length
			scr_check_save_name();
		}
	}
}