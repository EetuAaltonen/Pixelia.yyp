if (distance_to_object(obj_use) == 0 && activated == false && 
    image_blend != make_colour_hsv(0, 0, 255))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    activated = true;
    image_index = 1;
    instance_create(x, y, obj_lever_signal);
}

