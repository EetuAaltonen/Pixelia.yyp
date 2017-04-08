if (solid == true)
{
    image_blend = make_colour_hsv(0, 0, -1);
}
else
{
    image_blend = make_colour_hsv(0, 0, 150);
}

if (instance_exists(obj_player))
{
    if (solid == true)
    {
        if (distance_to_object(obj_player) <= 2)
        {
            if (y < obj_player.y)
            {
                solid = false;
                mask_index = spr_no_mask;
            }
            else if (keyboard_check_pressed(vk_down) || keyboard_check(vk_down))
            {
                solid = false;
                mask_index = spr_no_mask;
            }
        }
    }
    else
    {
        if (distance_to_object(obj_player) > 10)
        {
            solid = true;
            mask_index = spr_platform;
        }
    }
}

