if (hspeed > 0)
{
    image_xscale = 1
}
else if (hspeed < 0)
{
    image_xscale = -1
}

if (distance_to_object(obj_player) < 80
    and distance_to_object(obj_player) > 40)
{
    move_towards_point(obj_player.x, obj_player.y-8, 1)
}
else
{
    hspeed = 0;
    vspeed = 0;
}

