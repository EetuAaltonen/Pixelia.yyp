if (distance_to_object(obj_hitbox) == 0 and instance_exists(obj_player))
{
    if (global.damage == 1)
    {
        global.health -= str;
        scr_got_damage();
    }
    else
    {
        global.pause = 0;
        global.pause_draw = 0;
    }
}

