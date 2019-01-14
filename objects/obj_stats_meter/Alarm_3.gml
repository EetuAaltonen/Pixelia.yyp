/// @description Mana regen
if (!drainMana) {
	if (global.mana < (global.maxMana + global.manaPlus)) {
		global.mana += 1 //global.manaRegenAmount + global.manaRegenPlus;
		//Fix draw error
		global.mana = round(global.mana);
	}
	alarm[3] = scr_time_sec_to_alarm(1/(global.manaRegenAmount+global.manaRegenAmount*global.manaRegenPlus));
}