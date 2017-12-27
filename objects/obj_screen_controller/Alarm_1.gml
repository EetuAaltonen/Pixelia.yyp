if (targetRoom != currenRoom) {	
	if (viewAlpha < 1) {
		viewAlpha += transitionAmount;
		alarm[1] = transitionSpeed;
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
		alarm[1] = transitionSpeed;
	} else {
		viewAlpha = 0;
		drawViewAlpha = false;
		global.hudState = "null";
		if (instance_exists(obj_player)) {
			obj_player.actionState = "null";
		}
	}
}