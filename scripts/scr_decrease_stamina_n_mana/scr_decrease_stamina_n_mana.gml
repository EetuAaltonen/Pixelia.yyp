///scr_decrease_stamina_n_mana(argument0, argument1)
var type = argument0;
var amount = argument1;
var meter = obj_stats_meter;
switch (type) {
	case "stamina": {
		//Decrease stamina
		if (meter.staminaUsage) {
			global.stamina -= amount;
			meter.staminaUsage = false;
			//Reset stamina usage
			meter.alarm[4] = 5;
			//Reset stamina regen timer
			meter.alarm[2] = global.staminaRegenSpeed;
		}
	}
	break;
	case "mana": {
		//Decrease mana
		if (meter.manaUsage) {
			global.mana -= amount;
			meter.manaUsage = false;
			//Reset mana usage
			meter.alarm[5] = 5;
			//Reset mana regen timer
			meter.alarm[3] = global.manaRegenSpeed;
		}
	}
	break;
}