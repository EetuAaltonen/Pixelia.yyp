///Instance destroy
if (global.hudState != "map")
{
    instance_destroy();
}

///Image speed
if (distance_to_point(target_x, target_y) > 5)
{
    image_speed = 0.2;
}
else
{
    image_speed = 0;
}

