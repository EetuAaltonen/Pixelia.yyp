if (instance_exists(obj_player))
{
    if (distance_to_object(obj_player) > 15)
    {
        instance_destroy();
    }
}
else
{
    instance_destroy();
}

if (distance_to_object(obj_block_parent) == 0)
{
    speed *= 0.5;
}

if (speed < 0.5)
{
    instance_destroy();
}

