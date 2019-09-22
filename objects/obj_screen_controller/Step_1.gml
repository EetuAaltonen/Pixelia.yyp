///Create menu buttons and change view
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
		
		//Remove Search Box
		scr_hud_search_box_remove();
		
		if (instance_exists(obj_menu_saved_game)) {
			with (obj_menu_saved_game) instance_destroy();	
		}
        if (menuState == MenuActions.MainMenu) {
			scr_menu_create_main_buttons();
        } else if (menuState == MenuActions.Play) {
			scr_menu_create_load_buttons();
        } else if (menuState == MenuActions.Achievements) {
			scr_menu_create_achievements_buttons();
        } else if (menuState == MenuActions.Settings) {
			scr_menu_create_resolution_buttons();
        }
    }
}

//Focus
if (room != Menu && !pause) {
	if (unfocus == false && !window_has_focus()) {
		unfocus = true;
		instance_deactivate_all(true);
	} else if (unfocus && window_has_focus()) {
		unfocus = false;
		instance_activate_all();
	}
}

//Check Resolution
if (resolutionLastRoom != room_get_name(room)) {
	scr_resolution(global.wResolution, global.hResolution);	
	resolutionLastRoom = room_get_name(room);
}

//Room Change
if (room != First_loading) {
	if (instance_exists(obj_player)) {
		if (targetRoom != currentRoom && alarm[1] <= 0) {
			obj_player.actionState = Actions.Null;
			global.hudState = HudStates.RoomChange;
			drawViewAlpha = true;
			alarm[1] = scr_time_sec_to_alarm(transitionSpeed);
		} else if (targetRoom == currentRoom && alarm[1] <= 0 && viewAlpha == 1) {
			obj_player.actionState = Actions.Null;
			global.hudState = HudStates.RoomChange;
			drawViewAlpha = true;
			if (instance_exists(obj_source_controller)) {
				obj_source_controller.checkRespawnTimes = true;	
			}
			alarm[1] = scr_time_sec_to_alarm(transitionWaitTime);
		}
	}
}

if (!global.hudCanClose) {
	if (keyboard_check_released(vk_anykey)) {
		global.hudCanClose = true;
	}
}