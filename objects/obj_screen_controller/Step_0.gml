//Darkness Effect
if (darknessEffect) {
	if (instance_exists(obj_area_darkness)) {
		if (darknessAlpha < darknessMax && alarm[2] <= 0) {
			alarm[2] = scr_time_sec_to_alarm(transitionSpeed);
		}
	} else {
		darknessEffect = false;
	}
} else {
	if (darknessAlpha > 0 && alarm[2] <= 0) {
		alarm[2] = scr_time_sec_to_alarm(transitionSpeed);
	}
}