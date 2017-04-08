///Image x_scale FIX!!!
if (obj_player.x > x)
{
    image_index = 0;
}
else
{
    image_index = 1;
}

///Shoot
if (instance_exists(obj_archer_bow))
{
    if (shoot == true and (instance_nearest(x, y, obj_archer_bow)).shoot == true)
    {
        instance_create(x, y, obj_enemy_arrow);
        (instance_nearest(x, y, obj_enemy_arrow)).damage = str;
        //Animation
        //Neutral
        alarm[2] = 20;
            //Ready
        alarm[3] = 80;
            //Shoot
        alarm[1] = 100;
        shoot = false;
        (instance_nearest(x, y, obj_archer_bow)).image_index = 1;
    }
}

