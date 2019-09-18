if (distance_to_object(obj_use) == 0 && activated == false && 
    scr_highlighted())
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    activated = true;
    image_index = 1;
    instance_create(x, y, obj_lever_signal);
}

