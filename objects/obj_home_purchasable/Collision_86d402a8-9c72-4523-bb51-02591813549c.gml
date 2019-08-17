if (obj_player.actionState == Actions.Null)
{    
    if (global.coins >= price)
    {
        obj_player.actionState = "confirm";
        i = 1;
        alarm[2] = 100;
    }
}

