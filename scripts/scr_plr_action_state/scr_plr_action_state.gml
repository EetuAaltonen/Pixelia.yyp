//If some menu is open
/*if (global.hudState != "null") {
	actionState = "idle";
} else if (global.hudState == "null" && actionState == "idle") {
	actionState = "null";	
}*/

switch (actionState) {
	case "idle": {
		if (sprite_index != spr_plr_idle) {
			sprite_index = spr_plr_idle;
			image_speed = 0.2;
		}
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	}break;
	case "slice": {
		scr_plr_abi_slice();
	}break;
	case "bow": {
		scr_plr_abi_bow();
	}break;
	case "ladder": {
		scr_plr_ladder();
	}break;
	case "woodcutting": {
		if (sprite_index != spr_plr_woodcutting) {
			sprite_index = spr_plr_woodcutting;
			image_speed = 0.1;
		}
		/*if (keyboard_check_pressed(ord("E"))) {
			scr_plr_set_action_state_null();
		}*/
		
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	}break;
	case "mining": {
		if (sprite_index != spr_plr_mining) {
			sprite_index = spr_plr_mining;
			image_speed = 0.1;
		}
		/*if (keyboard_check_pressed(ord("E"))) {
			scr_plr_set_action_state_null();
		}*/
		
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	}break;
	default: {
		scr_plr_default_movement();
	}break;
}