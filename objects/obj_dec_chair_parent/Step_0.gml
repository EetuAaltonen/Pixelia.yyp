///Gravity
scr_custom_gravity();

///Sit
if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1) &&
    obj_player.action_state == "null")
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    reserved = true;
    obj_player.x = x;
    obj_player.y = y-11;
    obj_player.action_state = "sitting";
    if (instance_exists(obj_dec_table))
    {
        if (distance_to_object(obj_dec_table) < 5)
        {
            if (instance_nearest(x,y,obj_dec_table).x > x)
            {
                sitting_direction = 1;
            }
            else if (instance_nearest(x,y,obj_dec_table).x < x)
            {
                sitting_direction = -1;
            }
        }
        else
        {
            sitting_direction = "null";
        }
    }
    if (sitting_direction != "null")
    {
        obj_player.image_xscale = sitting_direction;
    }
    image_blend = make_colour_hsv(0, 0, -1);
    obj_player.highlight = false;
}

///Reset values
if (obj_player.action_state == "null")
{
    sitting_direction = "null";
    reserved = false;
}

