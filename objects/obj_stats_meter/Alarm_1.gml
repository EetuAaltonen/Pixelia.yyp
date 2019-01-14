/// @description Armor regen
///Armor regeration
if (global.armor < (global.maxArmor + global.armorPlus)) {
    global.armor += global.armorRegenAmount + global.armorRegenPlus;
}
if (global.armor > (global.maxArmor + global.armorPlus)) {
	global.armor = (global.maxArmor + global.armorPlus);
}
alarm[1] = scr_time_sec_to_alarm(1/(global.armorRegenAmount+global.armorRegenAmount*global.armorRegenPlus));

