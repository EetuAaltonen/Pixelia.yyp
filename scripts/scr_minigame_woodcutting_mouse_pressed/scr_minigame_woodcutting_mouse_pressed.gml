if (woodcuttingDirect != "stop") {
	var direct = woodcuttingDirect;
	var forceScale = woodcuttingForceScale;
	var targetScale = woodcuttingTargetHeight;
	var targetY = woodcuttingTargetY;
				
	woodcuttingTempDirect = woodcuttingDirect;
	woodcuttingDirect = "stop";
	if (forceScale >= targetY && forceScale <= (targetY+targetScale)) {
		scr_add_new_toast("Hit!");
		if (instance_exists(obj_player)) {
			var player = obj_player;
			player.sprite_index = spr_plr_woodcutting;
			player.image_speed = 0.2;
		}
	} else {
		scr_add_new_toast("Miss!");
	}
				
	alarm[1] = scr_to_sec(woodcuttingWaitTime);
}