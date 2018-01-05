if (targetRoom != currenRoom) {	
	if (viewAlpha < 1) {
		viewAlpha += transitionAmount;
		alarm[1] = scr_to_sec(transitionSpeed);
	} else {
		currenRoom = targetRoom;
		viewAlpha = 1;
		drawViewAlpha = false;
		global.hudState = "null";
		room_goto(targetRoom);
	}
} else {
	if (viewAlpha > 0) {
		viewAlpha -= transitionAmount;
		alarm[1] = scr_to_sec(transitionSpeed);
	} else {
		viewAlpha = 0;
		drawViewAlpha = false;
		global.hudState = "null";
		scr_plr_set_action_state_null();
	}
}