// Room Change
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