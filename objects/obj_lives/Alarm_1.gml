///Armor regeration
if (global.armor < (global.maxArmor + global.armorPlus)) {
    global.armor += global.armorRegenAmount + global.armorRegenPlus;
}
if (global.armor > (global.maxArmor + global.armorPlus)) {
	global.armor = (global.maxArmor + global.armorPlus);
}
alarm[1] = global.armorRegenSpeed;

