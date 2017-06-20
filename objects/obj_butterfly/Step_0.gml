if (round(distance_to_point(targetX, targetY)) > 0) {
	state = "fly";
} else {
	if (state == "fly") {
		image_index = 0;
		alarm[1] = round(random_range(sitTimeMin, sitTimeMax));
		alarm[2] = round(random_range(sitTimeMin/3, sitTimeMax/3));
		image_speed = 0;
		sprite_index = spr_butterfly_sit;
		image_index = 0;
		state = "sit";
	}
}