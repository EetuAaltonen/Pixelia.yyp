if (floor(image_index) == 10 && !opened) {
	opened = true;
	image_speed = 0;
	partEffCount = 10;
	partEffIndx = 0;
	
	scr_highlight_remove();
	alarm[0] = partEffDelay;
} else if (!opened && scr_interact_with_player()) {
	//Open
	if (instance_exists(obj_player)) {
		image_index = 0;
		image_speed = 0.8;
	}
}