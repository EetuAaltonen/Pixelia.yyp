if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1) &&
    obj_player.action_state == "null")
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    obj_player.x = x;
    obj_player.action_state = "ladder";
    image_blend = make_colour_hsv(0, 0, -1);
    obj_player.highlight = false;
}

