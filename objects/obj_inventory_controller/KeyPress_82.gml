///Use healing potion
if (global.hudState == "null")
{
    if (global.potions > 0 and global.health < 20)
    {
        global.potions -= 1;
        global.health += 10;
    }
    else if (global.potions == 0 and image_scale_potion == 1)
    {
        alarm[2] = 5;   
    }
}

