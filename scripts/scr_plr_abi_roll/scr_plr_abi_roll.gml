///Roll
if (global.hudState == "null") {
	if (scr_plr_neutral_action_states()) {
		if (global.stamina >= 3 and roll == 0 and !keyboard_check(vk_shift)) {
		    roll = 1;
			//Decrease stamina
			scr_decrease_stamina_n_mana("stamina", 2);
		    alarm[5] = 15;
		}
	}
}