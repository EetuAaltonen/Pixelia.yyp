if (instance_exists(obj_player))
{  
    if (obj_player.cooldown_slice == 1 and global.stamina >= 2)
    {
        image_index = 0;
    }
    else
    {
        image_index = 1;
    }
}

