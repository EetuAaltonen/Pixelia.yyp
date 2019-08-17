if (closed == true)
{
    if (distance_to_object(obj_use) == 0 && 
        obj_player.actionState = Actions.Null)
    {
        if (instance_exists(obj_use))
        {
            with (obj_use) instance_destroy();
        }
        closed = false;
        solid = false;
    }
}
else
{
    if (distance_to_object(obj_player) > 40) //40 = obj_use.sprite_width
    {
        closed = true;
        solid = true;
    }
}

