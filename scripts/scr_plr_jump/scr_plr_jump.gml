var up = ord("W");
if (keyboard_check(up) && !place_free(x, y+1) && canJump) {
	var jumpSpeed = -3.7;
	canJump = false;
	switch(actionState) {
		case "carryGoods": {
			vspeed = jumpSpeed*0.85;
		}break;
		case "slice": {
			vspeed = jumpSpeed;
		}break;
		default: {
			vspeed = jumpSpeed;
			if (scr_plr_neutral_action_states()) {
				actionState = "jump";
			}
		}break;
	}
	alarm[8] = scr_time_sec_to_alarm(0.4);
} else if (place_free(x, y+1) && vspeed > 0 && scr_plr_neutral_action_states()) {
		actionState = "falling";
} else if (actionState == "jump" || actionState == "falling") {
	actionState = "null";
}