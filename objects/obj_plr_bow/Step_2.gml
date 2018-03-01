///Arrow count == 0
if (arrowCount > 0) {
	if (mouse_check_button(mb_left)) {
		///Shoot & remove an arrow
		if (bow_can_shoot == true) {
		    instance_create(x, y, obj_plr_arrow);
			(instance_nearest(x, y, obj_plr_arrow)).image_angle = point_direction(x, y, mouse_x, mouse_y);
		    bow_can_shoot = false;
		    //added_amount = -1;
		    //scr_save_to_inventory();
		    //arrowCount -= 1;
			alarm[1] = scr_time_sec_to_alarm(0.5);
		}	
	}
} else {
	if (instance_exists(obj_player)) {
        scr_plr_set_action_state_null();
    }
}

///Position & Image angle
if (instance_exists(obj_player)) {
    x = obj_player.x;
    y = obj_player.y;
    
    //Image angle
    image_angle = point_direction(x, y, mouse_x, mouse_y);
	/*if (instance_exists(obj_plr_aim)) {
        image_angle = point_direction(x, y, obj_plr_aim.x, obj_plr_aim.y);
    }*/
} else {
    instance_destroy();
}

