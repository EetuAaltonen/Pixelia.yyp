///scr_decrease_stamina_n_mana(argument0, argument1)
var type = argument0;
var amount = argument1;
var meter = obj_stats_meter;
switch (type) {
	case "stamina": {
		//Decrease Stamina
		if (!meter.drainStamina) {
			meter.drainStamina = true;
			global.stamina -= amount;
			//Drain Speed
			meter.alarm[4] = global.drainCooldown
			//Regeneration Cooldown
			meter.alarm[2] = global.regenCooldown;
		}
	}break;
	case "mana": {
		//Decrease Stamina
		if (!meter.drainMana) {
			meter.drainMana = true;
			global.mana -= amount;
			//Drain Speed
			meter.alarm[5] = global.drainCooldown
			//Regeneration Cooldown
			meter.alarm[3] = global.regenCooldown;
		}
	}break;
}
/*switch (type) {
	case "stamina": {
		//Decrease stamina
		if (meter.staminaUsage) {
			global.stamina -= amount;
			meter.staminaUsage = false;
			//Reset stamina usage
			meter.alarm[4] = global.regenCooldown;
			//Reset stamina regen timer
			meter.alarm[2] = global.staminaRegenSpeed;
		}
	}break;
	case "mana": {
		//Decrease mana
		if (meter.manaUsage) {
			global.mana -= amount;
			meter.manaUsage = false;
			//Reset mana usage
			meter.alarm[5] = global.regenCooldown;
			//Reset mana regen timer
			meter.alarm[3] = global.manaRegenSpeed;
		}
	}break;
}