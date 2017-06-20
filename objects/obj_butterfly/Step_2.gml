switch (state) {
	case "sit": {
		hspeed = 0;
		vspeed = 0;
		if (spriteChange && round(image_index) == 0) {
			image_speed = 0;
			image_index = 0;
			spriteChange = false
			alarm[2] = round(random_range(sitTimeMin/3, sitTimeMax/3));
		} else if (image_index > 0) {
			image_speed = 1;
		}
	}break;
	case "fly": {
		sprite_index = spr_butterfly_fly;
		image_speed = 0.8;
		if (hspeed > 0) {
			image_xscale = 1;
		} else {
			image_xscale = -1;
		}
		if (targetX != 0 && targetY != 0) {
			mp_potential_step_object(targetX, targetY, flySpeed, obj_block_parent);
			
			/*grid = mp_grid_create(0, 0, room_width/16, room_height/16, 16, 16);
			path = path_add();
			mp_grid_add_instances(path, obj_block_parent, true);
			mp_grid_path(grid, path, x, y, targetX, targetY, true);
			path_start(path, flySpeed, path_action_stop, false)*/
			
			/*if (mp_linear_path_object(path0, targetX, targetY, flySpeed, obj_block_parent)) {
				path_start(path0, flySpeed, 0, 0);
			}*/
			//mp_linear_step_object(targetX, targetY, flySpeed, obj_block_parent);
			//move_towards_point(targetX, targetY, flySpeed);
			//tempTargetY = targetY;
		}
		/*if (round(distance_to_point(targetX, targetY)) > 0) {
			targetX = previousTargetX;
			targetY = previousTargetY;
		}*/
	}break;
}