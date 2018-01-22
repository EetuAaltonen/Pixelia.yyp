if (action != "null") {
	if (!obj_screen_controller.createButtons) {
		if (obj_screen_controller.menuState != "achievements") {
			if (!instance_exists(obj_menu_orb_of_euphoria) && !instance_exists(obj_menu_orb_of_euphoria)) {
				instance_create(x + sprite_width/2 + 48, y, obj_menu_orb_of_euphoria);
				if (obj_screen_controller.menuState != "loadGame") {
					instance_create(x - sprite_width/2 - 48, y, obj_menu_orb_of_dysforia);
				}
			}
		}
	}
}