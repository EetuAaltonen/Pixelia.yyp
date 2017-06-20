///@description Slice
///Slice
if (global.hudState == "null")
{
    if (action_state == "null" || action_state == "jump")
    {
        if (global.stamina >= 1)
        {
            if (cooldown_slice == 1)
            {
                action_state = "slice";
                //Decrease stamina
				scr_decrease_stamina_n_mana("stamina", 1);
                slice = 1;
                instance_create(x + (10 * image_xscale), y, obj_plr_slice);
                cooldown_slice = 0;
                alarm[1] = 25;
                alarm[2] = 20;
                image_speed = 0;
                image_index = 0;
            }
        }
    }
}

