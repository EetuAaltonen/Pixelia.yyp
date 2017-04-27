//Movement
//Gravity
scr_custom_gravity();

//Turn image_xscale
if (hspeed > 0) {
	image_speed = 0.2;
	image_xscale = 1;
} else if (hspeed < 0) {
	image_speed = 0.2;
	image_xscale = -1;
} else {
	image_speed = 0;
}

//Move to player
if (instance_exists(obj_player) && instance_exists(obj_solidify_parent)) {
	//Jump
	if (distance_to_object(obj_player) < 100 && !jump) {
		if (place_meeting(x, y+1, obj_solidify_parent)) {
			if (place_meeting(x +(20*image_xscale), y, obj_solidify_parent) &&
				!place_meeting(x +(15*image_xscale), y - 22, obj_solidify_parent)) {
				jump = true;
				vspeed = jumpSpeed;
				hspeed = walkingSpeed*image_xscale;
				alarm[1] = 20;
			}
		}
	}
	if (distance_to_object(obj_player) < 6) {
		if (!attack) {
			attack = true;
			text = "Attack";
			alarm[2] = attackSpeed;
			alarm[3] = 10;
		}
		if (obj_player.x > x) {
			image_xscale = 1;
		} else {
			image_xscale = -1;
		}
		if (place_meeting(x, y+1, obj_solidify_parent) && !jump) {
			hspeed = 0;
		}
	}
	else if (distance_to_object(obj_player) < 100) {
		if (!jump) {
			if (obj_player.x > x) {
				hspeed = walkingSpeed;
			} else if (obj_player.x < x) {
				hspeed = -walkingSpeed;
			}
		}
	}
} else {
	hspeed = 0;
}

/*if (def <= 0)
{
    //Enemies' stats
    if (draw_state == global.enemy_stats1)
    {
        global.enemy_stats1 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats2)
    {
        global.enemy_stats2 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats3)
    {
        global.enemy_stats3 = 0;
        draw_state = false;
    }
    //XP
    global.xp += 5;
    
    //Kill counter
    global.kill_counter += 1;
    
    instance_destroy();
}

