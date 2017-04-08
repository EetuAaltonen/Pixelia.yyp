if (distance_to_object(obj_fishing_bobber) == 0)
{
    image_speed = 0.2;
    sprite_index = spr_water_waves;
}
else
{
    image_speed = 0;
    sprite_index = spr_water;
}

