var up = ord("W");
if (keyboard_check(up) && !place_free(x, y+1) && canJump) {
	var jumpSpeed = -3.7;
	canJump = false;
	switch (actionState) {
		case Actions.Lift: {
			vspeed = jumpSpeed*0.85;
		}break;
		case Actions.Slice: {
			vspeed = jumpSpeed;
		}break;
		default: {
			vspeed = jumpSpeed;
			if (scr_plr_neutral_action_states()) {
				actionState = Actions.Jump;
			}
		}break;
	}
	alarm[8] = scr_time_sec_to_alarm(0.4);
} else if (place_free(x, y+1) && vspeed > 0 && scr_plr_neutral_action_states()) {
	actionState = Actions.Fall;
} else if (actionState == Actions.Jump || actionState == Actions.Fall) {
	actionState = Actions.Null;
}