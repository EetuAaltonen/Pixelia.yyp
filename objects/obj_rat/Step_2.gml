if (def <= 0)
{
    //Enemies' stats
    if (draw_state == global.enemy_stats1)
    {
        global.enemy_stats1 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats2)
    {
        global.enemy_stats2 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats3)
    {
        global.enemy_stats3 = 0;
        draw_state = false;
    }
    //XP
    global.xp += 5;
    
    //Kill counter
    global.kill_counter += 1;
    
    instance_destroy();
}

