if (!pause && !unfocus) {	
	if (targetRoom != currentRoom) {	
		if (viewAlpha < 1) {
			viewAlpha += transitionAmount;
			alarm[1] = scr_time_sec_to_alarm(transitionSpeed);
		} else {
			currentRoom = targetRoom;
			viewAlpha = 1;
			drawViewAlpha = false;
			global.hudState = HudStates.Null;
			
			scr_source_save_respawn_times();
			
			room_goto(targetRoom);
		}
	} else {
		if (viewAlpha > 0) {
			viewAlpha -= transitionAmount;
			alarm[1] = scr_time_sec_to_alarm(transitionSpeed);
		} else {
			viewAlpha = 0;
			drawViewAlpha = false;
			global.hudState = HudStates.Null;
			scr_plr_set_action_state_null();
		}
	}
} else {
	alarm[1] = scr_time_sec_to_alarm(transitionSpeed);
}