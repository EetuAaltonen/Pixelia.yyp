var up = ord("W");

if (!place_free(x, y+1)) {
	if (keyboard_check(up)) {
		switch(actionState) {
			case "carryGoods": {
				vspeed = -2.5;
			}break;
			case "slice": {
				vspeed = -3;
			}break;
			default: {
				vspeed = -3;
				if (scr_plr_neutral_action_states()) {
					actionState = "jump";
				}
			}break;
		}
	} else if (actionState == "jump" || actionState == "falling") {
		actionState = "null";
	}	
} else if (place_free(x, y+1) && vspeed > 0 && scr_plr_neutral_action_states()) {
		actionState = "falling";
}