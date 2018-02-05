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
		if (targetRoom != currenRoom && alarm[1] <= 0) {
			obj_player.actionState = "idle";
			global.hudState = "roomChange";
			drawViewAlpha = true;
			alarm[1] = scr_to_sec(transitionSpeed);
		} else if (targetRoom == currenRoom && alarm[1] <= 0 && viewAlpha == 1) {
			obj_player.actionState = "idle";
			global.hudState = "roomChange";
			drawViewAlpha = true;
			alarm[1] = scr_to_sec(transitionWaitTime);
		}
	}
}

if (!global.hudCanClose) {
	if (keyboard_check_released(vk_anykey)) {
		global.hudCanClose = true;
	}
}