// Create menu buttons and change view
if (room == Menu) {   
    if (createButtons && instance_exists(obj_camera_controller)) {
		createButtons = false;
		if (instance_exists(obj_menu_button)) {
			with (obj_menu_button) instance_destroy();
		}
		if (instance_exists(obj_menu_orb_of_euphoria)) {
			with (obj_menu_orb_of_euphoria) instance_destroy();
		}
		if (instance_exists(obj_menu_orb_of_dysforia)) {
			with (obj_menu_orb_of_dysforia) instance_destroy();
		}
		
		// Remove Search Box
		scr_hud_search_box_remove();
		
		if (instance_exists(obj_menu_saved_game)) {
			with (obj_menu_saved_game) instance_destroy();	
		}
        if (menuState == MenuAction.MainMenu) {
			scr_menu_create_main_buttons();
        } else if (menuState == MenuAction.Play) {
			scr_menu_create_load_buttons();
			fetchSave = true;
        } else if (menuState == MenuAction.Achievements) {
			scr_menu_create_achievements_buttons();
        } else if (menuState == MenuAction.Settings) {
			scr_menu_create_resolution_buttons();
        }
    }
}