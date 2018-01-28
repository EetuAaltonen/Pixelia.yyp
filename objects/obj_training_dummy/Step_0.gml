if (loot == "null") {
	loot = scr_enemy_initialize_loot(name);
}

if (image_speed > 0 && image_index > (image_number-1)) {
	image_index = 0;
	image_speed = 0;
}