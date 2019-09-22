if (action != "null") {
	if (!obj_screen_controller.createButtons) {
		if (obj_screen_controller.menuState != MenuActions.Achievements) {
			if (!instance_exists(obj_menu_orb_of_euphoria) && !instance_exists(obj_menu_orb_of_euphoria)) {
				instance_create(x + sprite_width / 2 + 48, y, obj_menu_orb_of_euphoria);
				if (obj_screen_controller.menuState != MenuActions.Play) {
					instance_create(x - sprite_width / 2 - 48, y, obj_menu_orb_of_dysforia);
				}
			}
		}
	}
}