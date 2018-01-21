if (action != "null") {
	if (obj_screen_controller.menu_state != "loadGame" || obj_screen_controller.menu_state != "achievements") {
		if (!instance_exists(obj_menu_orb_of_euphoria) && !instance_exists(obj_menu_orb_of_euphoria)) {
			instance_create(x + sprite_width/2 + 48, y, obj_menu_orb_of_euphoria);
			instance_create(x - sprite_width/2 - 48, y, obj_menu_orb_of_dysforia);
			show_message("Orbs created!");
		}
	}
}