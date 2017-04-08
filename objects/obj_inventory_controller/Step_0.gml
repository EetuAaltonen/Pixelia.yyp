///Level up
if (instance_exists(obj_player))
{
    if (global.xp >= global.xp_limit)
    {
        global.skill_points += 1;
        global.level += 1
        global.xp_limit += 100;
        global.xp = 0;
    }  
}

