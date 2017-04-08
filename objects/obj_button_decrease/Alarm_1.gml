if (obj_button_confirm.value > 0)
{
    if ((mouse_check_button(mb_left) && distance_to_object(obj_mouse) == 0) ||
        keyboard_check(vk_left))
    {
        obj_button_confirm.value -= 1;
        alarm[1] = 5;
    }
}

