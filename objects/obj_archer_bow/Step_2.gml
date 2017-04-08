///Aim
if (instance_exists(obj_archer))
{
    if (point_distance(x, y, (instance_nearest(x, y, obj_archer).x), (instance_nearest(x, y, obj_archer).y)) < obj_archer.sprite_width)
    {
        if (instance_exists(obj_player))
        {
            if (distance_to_object(obj_player) < 100)
            {
                image_angle = point_direction(x, y, round(obj_player.x), round(obj_player.y));
                if (round(obj_player.x) > x || round(obj_player.x) == x)
                {
                    x = (instance_nearest(x, y, obj_archer)).x + 5;
                    y = (instance_nearest(x, y, obj_archer)).y + 4;
                }
                else
                {
                    x = (instance_nearest(x, y, obj_archer)).x - 5;
                    y = (instance_nearest(x, y, obj_archer)).y + 4;
                }
            }
        }
    }
    else
    {
        instance_destroy();
    }
}
else
{
    instance_destroy();
}

