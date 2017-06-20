/*if (state == "fly") {	
	if (targetX-x > 10 || targetX+x < -10) {
		targetY += (50 * flyLineChangeDestination);
		flyLineChangeDestination *= -1;
		alarm[3] = flyLineChangeTime;
	} else {
		targetY = tempTargetY;
	}
}