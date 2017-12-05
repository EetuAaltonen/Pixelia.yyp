if (!place_free(x, y+1)) {
	if (keyboard_check_pressed(vk_up)) {
		switch(actionState) {
			case "null": {
				vspeed = -3;
				actionState = "jump";
			}break;
			case "carryGoods": {
				vspeed = -2.5;
			}break;
		}
	} else if (actionState == "jump") {
		actionState = "null";
	}
}
/*
if (keyboard_check_pressed(vk_up) && !place_free(x, y+1)) {
    if (action_state == "null" || action_state == "carry_goods") {
        if (action_state == "carry_goods") {
            
        } else {
            
        }
    }       
} else if (action_state == "jump" && !place_free(x, y+1)) {
    action_state = "null";
}