///Hit by player
///Hit by player
if (invulnerable == false) {
    if (instance_exists(obj_plr_attack_parent)) {
        with (obj_plr_attack_parent) instance_destroy();
    }
	scr_enemy_get_hit();
    invulnerable = true;
    alarm[1] = 20;
    scr_enemy_die();
	image_index = 1;
	image_speed = 0.8;
}
/*if (get_damage == 1) {
    if (instance_exists(obj_plr_attack_parent)) {
        with (obj_plr_attack_parent) instance_destroy();
    }
    def = def - 1;
    get_damage = 0;
    alarm[0] = 20;
    scr_enemy_die();
}

