/// @description Stamina regen
if (!drainStamina) {
	if (global.stamina < (global.maxStamina + global.staminaPlus)) {
		global.stamina += 1//global.staminaRegenAmount + global.staminaRegenPlus;
		//Fix draw error
		global.stamina = round(global.stamina);
	}
	alarm[2] = scr_time_sec_to_alarm(1/(global.staminaRegenAmount+global.staminaRegenAmount*global.staminaRegenPlus));
}