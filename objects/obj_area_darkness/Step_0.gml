var screen = obj_screen_controller;
if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) == 0 && !screen.darknessEffect) {
		screen.darknessEffect = true;
	} else if (distance_to_object(obj_player) > 0 && screen.darknessEffect) {
		screen.darknessEffect = false;
	}
} else {
	if (screen.darknessEffect) {
		screen.darknessEffect = false;
	}
}