if (instance_exists(obj_home_purchasable))
{
    if (distance_to_object(obj_home_purchasable) == 0)
    {
        image_alpha = 0.5;
    }
    else
    {
        image_alpha = 1;
    }
}
else
{
    image_alpha = 1;
}

