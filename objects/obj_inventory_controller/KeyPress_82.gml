///Use healing potion
if (global.hudState == HudStates.Null)
{
    if (global.potions > 0 and global.healthPoints < 20)
    {
        global.potions -= 1;
        global.healthPoints += 10;
    }
    else if (global.potions == 0 and image_scale_potion == 1)
    {
        alarm[2] = 5;   
    }
}

