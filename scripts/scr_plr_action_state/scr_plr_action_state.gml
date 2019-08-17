//If some menu is open
/*if (global.hudState != HudStates.Null) {
	actionState = Actions.Null;
} else if (global.hudState == HudStates.Null && actionState == Actions.Null) {
	actionState = Actions.Null;	
}*/

switch (actionState) {
	case Actions.Idle: {
		if (sprite_index != spr_plr_idle) {
			sprite_index = spr_plr_idle;
			image_speed = 0.2;
		}
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	}break;
	case Actions.Slice: {
		scr_plr_abi_slice();
	}break;
	case Actions.Bow: {
		scr_plr_abi_bow();
	}break;
	case Actions.Climb: {
		scr_plr_ladder();
	}break;
	case Actions.Woodcutting: {
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	}break;
	case Actions.Mining: {
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	}break;
	case Actions.Loot: {
		//Gravity
		scr_custom_gravity();
		hspeed = 0;
	}break;
	default: {
		scr_plr_default_movement();
	}break;
}