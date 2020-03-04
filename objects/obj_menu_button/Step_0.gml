if (action != "null") {
	var contoller = obj_menu_controller;
	if (!contoller.createButtons) {
		if (contoller.menuState != MenuAction.Achievements) {
			if (!instance_exists(obj_menu_orb_of_euphoria) && !instance_exists(obj_menu_orb_of_euphoria)) {
				instance_create(x + sprite_width / 2 + 48, y, obj_menu_orb_of_euphoria);
				if (contoller.menuState != MenuAction.Play) {
					instance_create(x - sprite_width / 2 - 48, y, obj_menu_orb_of_dysforia);
				}
			}
		}
	}
}