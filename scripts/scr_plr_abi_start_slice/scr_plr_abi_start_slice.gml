var alarms = obj_plr_combat_alarms;
if (global.stamina >= sliceCost) {
	if (global.hudState == "null" && scr_plr_neutral_action_states() && !sliceCooldown) {
		sliceCooldown = true;
					
		//Slice Streak
		if (sliceStreak < 3) {
			sliceStreak += 1;
			if (sliceStreak >= 3) {
				//tempHSpeed = hspeed;
				//hspeed += (image_xscale*10);
				alarms.alarm[3] = 0;
			} else {
				alarms.alarm[3] = 50*global.delta; //Reset Slice Streak
			}
		}
					
		//Create Attack
		instance_create(obj_player.x, obj_player.y, obj_plr_slice);
					
		//Decrease stamina
		//scr_decrease_stamina_n_mana("stamina", sliceCost);
		/*if (instance_exists(obj_enemy_parent)) {
			enemy = instance_nearest(x + (20*image_xscale), y, obj_enemy_parent);
			if (point_distance(enemy.x, enemy.y, x + (20*image_xscale), y) < 60) {
				if (distance_to_point(enemy.x, enemy.y) > 20) {
					tempMask = mask_index;
					mask_index = spr_no_mask;
					solid = false;
					sliceRam = true;
					tempHSpeed = 0;
				}
			}
		}*/
					
		actionState = "slice";
		sprite_index = spr_plr_sword_swing;
		image_speed = 0.2;
				
		alarms.alarm[1] = 20*global.delta; //Slice Cooldown
		alarms.alarm[2] = 10*global.delta; //Stop Movement
	}
}