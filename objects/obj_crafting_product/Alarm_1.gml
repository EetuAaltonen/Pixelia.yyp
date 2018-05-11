if (craftingStep < totalStepCount) {
	craftingStep += 1;
	alarm[1] = scr_time_sec_to_alarm(stepDuration);
} else {
	//Craft Item
	//scr_craft_item();
	craftingStep = 0;
	stepDuration = 0;
}
