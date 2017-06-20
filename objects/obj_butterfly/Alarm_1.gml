var randomX, randomY;
if (state == "sit" || (targetX == 0 && targetY == 0)) {
	previousTargetX = targetX;
	previousTargetY = targetY;
	var i, instance;
	for (i = 0; i < instance_number(obj_interact_flower); i++) {
		instance = instance_find(obj_interact_flower, i);
		if (instance.x != targetX || instance.y != targetY) {
			targetX = instance.x;
			targetY = instance.y;
			state = "fly";
			alarm[3] = flyLineChangeTime;
			break;
		}
	}
	/*randomX = random_range(ramdomTargetXMin, ramdomTargetXMax);
	randomY = random_range(ramdomTargetXMin, ramdomTargetXMax);
	if (instance_exists(obj_interact_flower)) {
		targetX = (instance_nearest(x+randomX, y+randomY, obj_interact_flower)).x;
		targetY = (instance_nearest(x+randomX, y+randomY, obj_interact_flower)).y;
	} else {
		targetX = x+randomX;
		targetY = y+randomY;
	}
	if (targetX != previousTargetX || targetY != previousTargetY) {
		state = "fly";
		alarm[3] = flyLineChangeTime;
		image_index = 0;
	} else {
		alarm[1] = round(random_range(sitTimeMin/2, sitTimeMax/2));
	}*/
}