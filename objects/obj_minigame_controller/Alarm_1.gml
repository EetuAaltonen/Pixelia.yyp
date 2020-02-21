///@description Woodcutting
if (global.hudState == HudStates.Minigame) {
	if (minigame != "null" && minigameInitialized) {
		switch (forceDirect) {
			case "up": {
				if (forceScale >= (maxScale-forceAmount)) {
					forceDirect = "down";
				} else {
					forceScale += forceAmount;
				}
				alarm[1] = scr_time_sec_to_alarm(forceSpeed);
			}break;
			case "down": {
				if (forceScale <= 0) {
					forceDirect = "up";
				} else {
					forceScale -= forceAmount;
				}
				alarm[1] = scr_time_sec_to_alarm(forceSpeed);
			}break;
			case "stop": {
				forceDirect = tempDirect;
				targetY = "null";
				/*if (some thing to stop this) {
					minigame = "null";
					minigameInitialized = false;
					scr_global_hud_state_reset();
				} else {*/
					alarm[1] = 1;
					
				//}
			}break;
		}
	}
}