///Start fishing
if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_player))
    {
        if (instance_exists(obj_use))
        {
            with (obj_use) instance_destroy();
        }
        obj_player.action_state = "fishing";
        instance_create(obj_player.x, obj_player.y, obj_fishing_bobber);
    }
}

///Fishing direction
if (instance_exists(obj_fishing_vein))
{
    if ((instance_nearest(x, y, obj_fishing_vein)).x > x)
    {
        direction_of_vein = 1;
    }
    else
    {
        direction_of_vein = -1;
    }
}

if (instance_exists(obj_player))
{    
    if (obj_player.action_state == "fishing")
    {
        visible = false;
    }
    else
    {
        visible = true;
    }
}

