///Hit by player
if (invulnerable == false) {
    if (instance_exists(obj_plr_attack_parent))
    {
        with (obj_plr_attack_parent) instance_destroy();
    }
	var critical = random_range(0,1);
	var damage;
	if (critical <= global.criticalChance) {
		damage = global.maxDamage + (global.maxDamage*global.criticalDamage);
		critical = true;
	} else {
		damage = round(random_range(global.minDamage, global.maxDamage));
		critical = false;
	}
	healthPoints -= damage;
	scr_enemy_get_hit(damage, critical);
    invulnerable = true;
    alarm[1] = 20;
    scr_enemy_die();
	image_index = 1;
	image_speed = 0.8;
}