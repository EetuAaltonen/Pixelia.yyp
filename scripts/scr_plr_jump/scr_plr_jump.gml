if (!place_free(x, y+1)) {
	if (keyboard_check_pressed(vk_up)) {
		switch(actionState) {
			case "carryGoods": {
				vspeed = -2.5;
			}break;
			default: {
				vspeed = -3;
				actionState = "jump";
			}break;
		}
	} else if (actionState == "jump" || actionState == "falling") {
		actionState = "null";
	}
} else if (place_free(x, y+1) && vspeed > 0 && actionState == "jump") {
		actionState = "falling";
}