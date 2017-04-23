/// @description stamina regen
///Stamina regen
if (global.stamina < (global.maxStamina + global.staminaPlus)) {
	global.stamina += global.staminaRegenAmount + global.staminaRegenPlus;
	//Fix draw error
	global.stamina = round(global.stamina);
}
alarm[2] = global.staminaRegenSpeed;