var alarms = obj_plr_combat_alarms;

if (sliceRam) {
	if (instance_exists(enemy)) {
		var enemyX = enemy.x + (15*(image_xscale*(-1)));
		var enemyY = y;
		if (distance_to_point(enemyX, enemyY) <= 15) {
			//Gravity
			scr_custom_gravity();
			hspeed = 0;
			if (!solid) {
				solid = true;
				mask_index = tempMask;
			}
			if (keyboard_check_pressed(vk_right) ||
				keyboard_check_pressed(vk_left) ||
				keyboard_check_released(vk_right) ||
				keyboard_check_released(vk_left) ||
				(!keyboard_check(vk_right) && !keyboard_check(vk_left))) {
				sliceRam = false;
				alarms.alarm[2] = 1;
			} else {
				if (alarms.alarm[1] <= 0 && sprite_index == spr_plr_sword_swing) {
					if (image_index > (image_number - 1)) {
						sprite_index = spr_player;
						sliceCooldown = false;
					}
				}
				alarms.alarm[2] = 20*global.delta;
			} 
		} else {
			move_towards_point(enemyX, enemyY, 8);
			alarms.alarm[2] = 20*global.delta;
		}
	} else {
		sliceRam = false;
		hspeed = 0;
		vspeed = 0;
		solid = true;
		mask_index = tempMask;
	}
} else {
	//Gravity
	scr_custom_gravity();
	//Movement
	scr_plr_movement();
	//Jump
	scr_plr_jump();
}
	
if (alarms.alarm[2] <= 0 && !sliceRam) {
	if (actionState == "slice") {
		if (sliceStreak >= 3) {
			//hspeed = tempHSpeed;
			sliceStreak = 0;
		}
	}
	if (sprite_index == spr_plr_sword_swing && image_index > (image_number - 1)) {
		sprite_index = spr_player;
		image_speed = 0.2;
		//alarms.alarm[1] = 1;
		sliceCooldown = false;
		actionState = "null";
	}
}