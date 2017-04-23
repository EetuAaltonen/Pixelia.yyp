if (keyboard_check(vk_right) && keyboard_check(vk_left))
{
    scr_plr_stop_movement();
}
else if (keyboard_check(vk_right))
{
    if (image_index == 0 && image_speed == 0) {
        image_index += 1;
    }
    if (keyboard_check(vk_shift) &&
        !keyboard_check(vk_down) &&
		global.stamina > 0 &&
		!place_free(x, y+1)) {
        //Run
        image_speed = 0.5;
        if (hspeed < (global.maxRunningSpeed + global.maxRunningSpeedPlus)) {
            hspeed += acceleration;
        } else {
            hspeed = (global.maxRunningSpeed + global.maxRunningSpeedPlus);
        }
		//Decrease stamina
		scr_decrease_stamina_n_mana("stamina", 0.5);
    } else {
        //Walk
        if (hspeed < (global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
            hspeed += acceleration;
        } else {
            hspeed = (global.maxWalkingSpeed + global.maxWalkingSpeedPlus);
        }
    }
}
else if (keyboard_check(vk_left))
{
    if (image_index == 0 && image_speed == 0)
    {
        image_index += 1;
    }
    if (keyboard_check(vk_shift) &&
		!keyboard_check(vk_down) &&
		global.stamina > 0 &&
		!place_free(x, y+1)) {
        //Run
        image_speed = 0.5;
        if (hspeed > -(global.maxRunningSpeed + global.maxRunningSpeedPlus)) {
            hspeed -= acceleration;
        } else {
            hspeed = -(global.maxRunningSpeed + global.maxRunningSpeedPlus);
        }
		//Decrease stamina
		scr_decrease_stamina_n_mana("stamina", 0.5);
    } else {
        //Walk
        if (hspeed > -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus)) {
            hspeed -= acceleration;
        } else {
            hspeed = -(global.maxWalkingSpeed + global.maxWalkingSpeedPlus);
        }
    }
}
else
{
    scr_plr_stop_movement();
}
if (hspeed == 0)
{
    image_speed = 0;
    image_index = 0;   
}
else
{
    image_speed = 0.2;
}
