if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    obj_screen_controller.target_room = Pixelia_Castle_1;
    obj_screen_controller.start = true;
}

