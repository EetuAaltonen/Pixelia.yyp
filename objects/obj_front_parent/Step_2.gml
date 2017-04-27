/// @Image alpha
if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) == 0) {
		image_alpha = 0.8;
	} else {
		image_alpha = 1;
	}
}