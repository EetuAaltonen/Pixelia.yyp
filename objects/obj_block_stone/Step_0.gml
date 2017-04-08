if (instance_exists(obj_use))
{
    if (distance_to_object(obj_use) == 0)
    {
        if (instance_exists(obj_use))
        {
            with (obj_use) instance_destroy();
        }
    }
}

