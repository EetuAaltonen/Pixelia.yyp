if (instance_exists(obj_player)) {
    // Stamina
	if (global.stamina > (global.maxStamina + global.staminaPlus)) {
        global.stamina = (global.maxStamina + global.staminaPlus);
    } else if (global.stamina < 0) {
        global.stamina = 0;
    }
	
	// Mana
	if (global.mana > (global.maxMana + global.manaPlus)) {
        global.mana = (global.maxMana + global.manaPlus);
    } else if (global.mana < 0) {
        global.mana = 0;
    }
	
	// Level up
	if (global.xp >= global.xpLimit) {
        global.skillPoints += 1;
        global.level += 1
        global.xpLimit += 100;
        global.xp = 0;
    }
	if (global.enchantingXp >= global.enchantingXpLimit) {
        global.enchantingPoints += 1;
        global.enchantingXpLimit += 100;
        global.enchantingXp = 0;
    }
}