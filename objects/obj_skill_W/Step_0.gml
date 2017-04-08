if (instance_exists(obj_player))
{    
    if (obj_player.cooldown_shield == 1 and global.mana >= 5)
    {
        image_index = 0;
    }
    else
    {
        image_index = 1;
    }
}

