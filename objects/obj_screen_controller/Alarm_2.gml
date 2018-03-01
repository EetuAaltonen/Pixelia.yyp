/// @description Darkness Effect Alpha
if (!pause && !unfocus) {
	if (darknessEffect && darknessAlpha < darknessMax) {
		darknessAlpha += transitionAmount;
		alarm[2] = scr_time_sec_to_alarm(transitionSpeed);
	} else if (!darknessEffect && darknessAlpha > 0) {
		darknessAlpha -= transitionAmount;
		alarm[2] = scr_time_sec_to_alarm(transitionSpeed);
	}
} else {
	alarm[2] = scr_time_sec_to_alarm(transitionSpeed);
}