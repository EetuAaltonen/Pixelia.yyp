///Level up
if (instance_exists(obj_player)) {
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