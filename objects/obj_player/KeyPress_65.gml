///Roll
if (global.hudState == "null")
{
    if (global.stamina >= 3 and roll == 0 and !keyboard_check(vk_shift))
    {
        roll = 1;
        alarm[5] = 15;
    }
}

