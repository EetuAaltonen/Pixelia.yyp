if (reserved == true)
{
    if (keyboard_check(vk_right) && keyboard_check(vk_left))
    {
        hspeed = 0;
    }
    else if (keyboard_check(vk_right))
    {
        hspeed = 2;
    }
    else if (keyboard_check(vk_left))
    {
        hspeed = -2;
    }
}

