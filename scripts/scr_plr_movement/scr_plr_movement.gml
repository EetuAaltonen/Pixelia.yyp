if (keyboard_check(vk_right) && keyboard_check(vk_left)) {
	
}
/*if (keyboard_check(vk_right) && keyboard_check(vk_left)) {
    scr_plr_stop_movement();
} else if (keyboard_check(vk_right)) {
    if (image_index == 0 && image_speed == 0) {
        image_index += 1;
    }
    if (keyboard_check(vk_shift) &&
        !keyboard_check(vk_down) &&
		global.stamina > 0) {
        //Run
        image_speed = 0.5;
        if (hspeed < (global.maxRunningSpeed + global.maxRunningSpeedPlus)*global.delta) {
            hspeed += acceleration*global.delta;
        } else {
            hspeed = (global.maxRunningSpeed + global.maxRunningSpeedPlus)*global.delta;
        }
		//Decrease stamina
		if (hspeed > (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta &&
			!place_free(x, y+1)) {
			scr_decrease_stamina_n_mana("stamina", 0.5);
		}
    } else {
        //Walk
        if (hspeed < (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta) {
            hspeed += acceleration*global.delta;
        } else {
            hspeed = (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta;
        }
    }
}
else if (keyboard_check(vk_left)) {
    if (image_index == 0 && image_speed == 0){
        image_index += 1;
    }
    if (keyboard_check(vk_shift) &&
		!keyboard_check(vk_down) &&
		global.stamina > 0) {
        //Run
        image_speed = 0.5;
        if (hspeed > -(global.maxRunningSpeed + global.maxRunningSpeedPlus)*global.delta) {
            hspeed -= acceleration*global.delta;
        } else {
            hspeed = -(global.maxRunningSpeed + global.maxRunningSpeedPlus)*global.delta;
        }
		//Decrease stamina
		if (hspeed < -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta &&
			!place_free(x, y+1)) {
			scr_decrease_stamina_n_mana("stamina", 0.5);
		}
    } else {
        //Walk
        if (hspeed > -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta) {
            hspeed -= acceleration*global.delta;
        } else {
            hspeed = -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta;
        }
    }
} else {
    scr_plr_stop_movement();
}
