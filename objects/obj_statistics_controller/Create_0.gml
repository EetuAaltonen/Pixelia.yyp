depth = Depth.UI;
image_speed = 0;

//Regen & Buff timer
alarm[0] = global.alarmTicks;

//Armor
alarm[1] = scr_time_sec_to_alarm(1/(global.armorRegenAmount+global.armorRegenAmount*global.armorRegenPlus));
//Stamina
alarm[2] = scr_time_sec_to_alarm(1/(global.staminaRegenAmount+global.staminaRegenAmount*global.staminaRegenPlus));
drainStamina = false;
//Mana
alarm[3] = scr_time_sec_to_alarm(1/(global.manaRegenAmount+global.manaRegenAmount*global.manaRegenPlus));
drainMana = false;