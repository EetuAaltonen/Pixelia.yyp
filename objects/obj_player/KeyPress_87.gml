///@description Shield
///Shield
if (global.hudState == "null")
{
    if (global.mana >= 5)
    {
        if (cooldown_shield == 1)
        {
            //Decrease stamina
			scr_decrease_stamina_n_mana("mana", 5);
            cooldown_shield = 0;
            
            if (image_xscale == 1)
            {
                instance_create(x + 10, y, obj_plr_shield)
            }
            else if (image_xscale == -1)
            {
                instance_create(x - 10, y, obj_plr_shield)
            }
            alarm[11] = 50;
        }
    }
}

