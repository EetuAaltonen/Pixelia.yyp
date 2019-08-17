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
			obj_player.actionState = Actions.Idle;
			global.hudState = HudStates.RoomChange;
			drawViewAlpha = true;
			alarm[1] = scr_time_sec_to_alarm(transitionSpeed);
		} else if (targetRoom == currentRoom && alarm[1] <= 0 && viewAlpha == 1) {
			obj_player.actionState = Actions.Idle;
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