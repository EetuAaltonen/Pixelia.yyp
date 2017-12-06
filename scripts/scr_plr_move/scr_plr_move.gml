if (image_index == 0 && image_speed == 0){
    image_index += 1;
}
if (keyboard_check(vk_shift) &&
	!keyboard_check(vk_down) &&
	global.stamina > 0) {
    //Run
    image_speed = 0.5;
    if (abs(hspeed) < (global.maxRunningSpeed + global.maxRunningSpeedPlus)*global.delta) {
        hspeed += (acceleration*global.delta)*image_xscale;
    } else {
        hspeed = ((global.maxRunningSpeed + global.maxRunningSpeedPlus)*global.delta)*image_xscale;
    }
	//Decrease stamina
	if (abs(hspeed) > (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta &&
		!place_free(x, y+1)) {
		scr_decrease_stamina_n_mana("stamina", 4);
	}
} else {
    //Walk
    if (abs(hspeed) < (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta) {
        hspeed += (acceleration*global.delta)*image_xscale;
    } else {
        hspeed = ((global.maxWalkingSpeed + global.maxWalkingSpeedPlus)*global.delta)*image_xscale;
    }
}