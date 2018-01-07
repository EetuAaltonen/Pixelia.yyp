/// @description Darkness Effect Alpha
if (!pause && !unfocus) {
	if (darknessEffect && darknessAlpha < darknessMax) {
		darknessAlpha += transitionAmount;
		alarm[2] = scr_to_sec(transitionSpeed);
	} else if (!darknessEffect && darknessAlpha > 0) {
		darknessAlpha -= transitionAmount;
		alarm[2] = scr_to_sec(transitionSpeed);
	}
} else {
	alarm[2] = scr_to_sec(transitionSpeed);
}