image_speed = 0;
startX = x;
startY = y;
if (instance_exists(obj_player)) {
    hspeed = (10 * obj_player.image_xscale) + obj_player.hspeed;
	if (obj_player.sliceStreak >= 3) {
		image_index = 1;	
	}
} else {
    instance_destroy();
}
moveDistance = 30;