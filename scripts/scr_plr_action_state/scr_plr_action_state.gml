//If some menu is open
if (global.hudState != "null") {
	actionState = "idle";
} else if (global.hudState == "null" && actionState == "idle") {
	actionState = "null";	
}
switch (actionState) {
	case "idle": {
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	    image_speed = 0.2;
		image_index = 0;
	    sprite_index = spr_player;
		//sprite_index = spr_player_idle;
	}break;
	case "slice": {
		scr_plr_abi_slice();
	}break;
	case "ladder": {
		//Do something
	}break;
	default: {
		scr_plr_default_movement();
	}break;
}