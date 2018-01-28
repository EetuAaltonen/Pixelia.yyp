if (distance_to_object(obj_plr_attack_parent) == 0) {
	///Hit by player
	if (invulnerable == false) {
	    if (instance_exists(obj_plr_attack_parent)) {
	        with (obj_plr_attack_parent) instance_destroy();
	    }
		scr_enemy_get_hit();
	    scr_enemy_die();
		invulnerable = true;
	    alarm[1] = 20;
		image_index = 0;
		//image_speed = 0.8;
		
		/*if (instance_exists(obj_plr_attack_parent)) {
	        with (obj_plr_attack_parent) instance_destroy();
	    }
	    def = def - 1;
	    get_damage = 0;
	    alarm[0] = 20;
	    scr_enemy_die();*/
	}
}