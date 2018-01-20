///@description Woodcutting
var forceScale = woodcuttingForceScale;
var amount = woodcuttingForceAmount;
var maxScale = woodcuttingMaxScale;
var direct = woodcuttingDirect;
var timerSpeed = woodcuttingSpeed;

if (global.hudState == "minigame") {
	if (minigame != "null" && minigameInitialized) {
		switch (direct) {
			case "up": {
				if (forceScale >= (maxScale-amount)) {
					woodcuttingDirect = "down";
				} else {
					woodcuttingForceScale += amount;
				}
				alarm[1] = scr_to_sec(timerSpeed);
			}break;
			case "down": {
				if (forceScale <= 0) {
					woodcuttingDirect = "up";
				} else {
					woodcuttingForceScale -= amount;
				}
				alarm[1] = scr_to_sec(timerSpeed);
			}break;
			case "stop": {
				woodcuttingDirect = woodcuttingTempDirect;
				woodcuttingTargetY = "null";
				/*if (some thing to stop this) {
					minigame = "null";
					minigameInitialized = false;
					scr_close_global_hudstate();
				} else {*/
					alarm[1] = 1;
					
				//}
			}break;
		}
	}
}