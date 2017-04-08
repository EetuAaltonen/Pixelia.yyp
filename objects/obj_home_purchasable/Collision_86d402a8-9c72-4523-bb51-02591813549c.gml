if (obj_player.action_state == "null")
{    
    if (global.coins > price || global.coins == price)
    {
        obj_player.action_state = "confirm";
        i = 1;
        alarm[2] = 100;
    }
}

