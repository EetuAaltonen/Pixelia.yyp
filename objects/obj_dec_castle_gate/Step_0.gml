if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, 255))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    image_speed = 0.2;
}
if (image_index == 5)
{
    image_speed = 0;
    obj_screen_controller.target_room = Test_improved;
    obj_screen_controller.start = true;
    image_index = 6;
}

