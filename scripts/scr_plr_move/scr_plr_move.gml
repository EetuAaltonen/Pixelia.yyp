var xScale = argument0;
var down = ord("S");

if (abs(hspeed) > 0) {
	image_speed *= (abs(hspeed)/(global.maxWalkingSpeed + global.maxWalkingSpeedPlus));
}

if (keyboard_check(vk_shift) &&
	!keyboard_check(down) &&
	global.stamina > 0) {
    //Run
	switch (xScale) {
		case 1: {
			if (hspeed < (global.maxRunningSpeed + global.maxRunningSpeedPlus)) {
				if (!place_free(x,y+1) || hspeed <= (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
					hspeed += acceleration*global.delta;
				}
		    } else if (hspeed > (global.maxRunningSpeed + global.maxRunningSpeedPlus)) {
		        hspeed -= acceleration*global.delta;
		    }
		}break;
		case -1: {
			if (hspeed > -(global.maxRunningSpeed + global.maxRunningSpeedPlus)) {
				if (!place_free(x,y+1) || hspeed >= -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
					hspeed -= acceleration*global.delta;
				}
		    } else if (hspeed < -(global.maxRunningSpeed + global.maxRunningSpeedPlus)) {
		        hspeed += acceleration*global.delta;
		    }
		}
	}
	//Decrease stamina
	/*if (abs(hspeed) > (global.maxWalkingSpeed + global.maxWalkingSpeedPlus) &&
		!place_free(x, y+1)) {
		//scr_decrease_stamina_n_mana("stamina", 4);
	}*/
	
} else {
    //Walk
    switch (xScale) {
		case 1: {
			if (hspeed < (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
		        hspeed += acceleration*global.delta;
		    } else if (hspeed > (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
		        hspeed -= acceleration*global.delta;
		    }
		}break;
		case -1: {
			if (hspeed > -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
		        hspeed -= acceleration*global.delta;
		    } else if (hspeed < -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
		        hspeed += acceleration*global.delta;
		    }	
		}
	}
}