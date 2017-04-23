/// @description mana regen
///Mana regen
if (global.mana < (global.maxMana + global.manaPlus)) {
	global.mana += global.manaRegenAmount + global.manaRegenPlus;
	//Fix draw error
	global.mana = round(global.mana);
}
alarm[3] = global.manaRegenSpeed;