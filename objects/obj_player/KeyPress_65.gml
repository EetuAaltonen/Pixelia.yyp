///@description Roll
///Roll
if (global.hudState == "null")
{
    if (global.stamina >= 3 and roll == 0 and !keyboard_check(vk_shift))
    {
        roll = 1;
		//Decrease stamina
		scr_decrease_stamina_n_mana("stamina", 2);
        alarm[5] = 15;
    }
}

