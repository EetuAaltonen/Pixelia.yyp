if (forceDirect != "stop") {
	tempDirect = forceDirect;
	forceDirect = "stop";
	if (forceScale >= targetY && forceScale <= (targetY+targetHeight)) {
		scr_add_new_toast("Hit!");
		if (instance_exists(obj_player)) {
			var player = obj_player;
			player.sprite_index = spr_plr_woodcutting;
			player.image_speed = 0.2;
		}
	} else {
		scr_add_new_toast("Miss!");
	}
				
	alarm[1] = scr_time_sec_to_alarm(waitTime);
}