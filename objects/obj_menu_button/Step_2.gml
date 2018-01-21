//Move orbs when meeting mouse
if (instance_exists(obj_menu_orb_of_euphoria) && instance_exists(obj_menu_orb_of_dysforia)) {
	if (distance_to_point(mouse_x, mouse_y) == 0) {
		if (obj_menu_orb_of_euphoria.target_y != y) {
			obj_menu_orb_of_euphoria.resetTarget = true;
			obj_menu_orb_of_euphoria.target_x = x + sprite_width/2 + 48;
			obj_menu_orb_of_euphoria.target_y = y;
			obj_menu_orb_of_dysforia.resetTarget = true;
			obj_menu_orb_of_dysforia.target_x = x - sprite_width/2 - 48;
			obj_menu_orb_of_dysforia.target_y = y;
		}
	}
}
if (action != "load" || action != "delete") {	
	///Check text length
	scr_check_save_name();
}