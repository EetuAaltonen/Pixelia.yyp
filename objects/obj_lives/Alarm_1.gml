///Armor regeration
if (global.armor < global.maxArmor)
{
    global.armor += global.armorRegenAmount + global.armorRegenPlus;
    alarm[1] = global.armorRegenSpeed;
}

