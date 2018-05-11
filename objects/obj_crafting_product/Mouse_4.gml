//Start CRafting
if (product != "null" && craftingStep == 0) {
	craftingStep += 1;
	stepDuration = (1 / totalStepCount/*Recipe Craft Duration*/);
	alarm[1] = scr_time_sec_to_alarm(stepDuration);
}