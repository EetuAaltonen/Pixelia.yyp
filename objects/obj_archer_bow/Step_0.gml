if (instance_exists(obj_player))
{
    if (distance_to_object(obj_player) == 0)
    {
        if (shoot == false)
        {
            if (!collision_line(x, y, obj_player.x, obj_player.y, obj_solidify_parent, false, false))
            {
                shoot = true;
                alarm[1] = 10;
            } 
        }
    }
}

