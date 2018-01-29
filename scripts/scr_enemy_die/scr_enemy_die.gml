if (healthPoints == 0) {
	//Enemy clear draw stats
    //scr_reset_draw_state();
	//Level xp
	global.xp += xpReward;
	//Enchanting xp
	global.enchantingXp += enchantingXpReward;
	//Kill counter
    global.kill_counter += 1;
	healthPoints = maxHealth;
	armor = maxArmor;
	scr_enemy_drop_loot(loots);
}