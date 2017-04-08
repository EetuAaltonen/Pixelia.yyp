///Hit to hitbox
if (instance_exists(obj_plr_hitbox))
{    
    if (distance_to_object(obj_plr_hitbox) == 0)
    {
        if (can_hurt == true)
        {
            if ((global.armor - damage) < 0)
            {
                global.health += (global.armor - damage);
            }
            if (global.armor > 0)
            {
                global.armor -= damage;
                if (global.armor < 0)
                {
                    global.armor = 0;
                }
            }
            scr_got_damage();
            instance_destroy();
        }
    }
}

