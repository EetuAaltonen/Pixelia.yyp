if (distance_to_object(obj_player) < 40 and
    distance_to_object(obj_player) > 20)
{
    move_towards_point(obj_player.x, obj_player.y, 1)
    if (shoot == 1)
    {
        instance_create(x, y, obj___ammo) //?????
        shoot = 0;
        alarm[1] = 40;
    }
}
else
{
   hspeed = 0;
   vspeed = 0; 
}

