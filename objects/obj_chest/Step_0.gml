///Gravity
scr_custom_gravity();

///Collect
if (distance_to_object(obj_use) == 0 && collected == false && 
    image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    collected = true;
    global.xp += (5 * global.level);
    image_index = 1;
    alarm[0] = 20;
}

///Instance destroy
if (image_alpha == 0)
{
    obj_player.highlight = false;
    instance_destroy();
}

