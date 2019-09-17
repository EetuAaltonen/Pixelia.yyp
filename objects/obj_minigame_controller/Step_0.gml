if (global.hudState == HudStates.Minigame) {
	if (instance_exists(obj_player)) {
		var viewX = camera_get_view_x(view_camera[0]);
		var viewY = camera_get_view_y(view_camera[0]);
		var viewWidth = camera_get_view_width(view_camera[0]);
		var viewHeight = camera_get_view_height(view_camera[0]);
		var viewXCenter = (viewX + viewWidth) / 2;
		var viewYCenter = (viewY + viewHeight) / 2;

		switch (obj_player.actionState) {
			case Actions.Fishing: {
				if (fishingState == Fishing.Minigame) {
					if (keyboard_check_pressed(vk_space)) {
						fishingState = Fishing.ResultMessage;
						bobberSpeed = 0;
						imageAngle = 0;
						// TODO: Calculate here fishing loot
						if ((viewXCenter + bobberX) < viewXCenter + (area1Xscale/2) &&
						    (viewXCenter + bobberX) > viewXCenter - (area1Xscale/2)) {
						    successText = "Great!";
						} else if ((viewXCenter + bobberX) < (viewXCenter + (area1Xscale/2*4)) &&
						        (viewXCenter + bobberX) > (viewXCenter - (area1Xscale/2*4))) {
						    successText = "Nice!";
						} else {
						    successText = "Fail!";
						}
						alarm[5] = scr_time_sec_to_alarm(2);
					} else {
						// Bobber movement
						if ((viewXCenter + bobberX) > (viewXCenter + (210/2)) && bobberDirection == 1) {
						    bobberDirection = -1;
						    bobberX -= 2;
						    alarm[3] = bobberSpeed;
						} else if ((viewXCenter+ bobberX) < (viewXCenter - (210/2)) && bobberDirection == -1) {
						    bobberDirection = 1;
						    bobberX += 2;
						    alarm[3] = bobberSpeed;
						}

						// Bobber image angle
						if (imageAngle > 15 &&
						    bobberRotateDirection == 1) {
						    imageAngle -= 1;
						    bobberRotateDirection = -1;
						    alarm[4] = bobberRotateSpeed;
						} else if (imageAngle < -15 &&
						    bobberRotateDirection == -1) {
						    imageAngle += 1;
						    bobberRotateDirection = 1;
						    alarm[4] = bobberRotateSpeed;
						}
					}
				}
			}break;
			case Actions.Mining: {
				// TODO: Rewrite mining minigame logic
			}break;
			case Actions.Woodcutting: {
				// TODO: Rewrite woodcutting minigame logic
			}break;
		}
	} else {
		global.hudState = HudStates.Null;
	}	
}
/*
if (global.hudState == HudStates.Minigame) {
	if (minigame != "null" && !minigameInitialized) {
		if (instance_exists(obj_player)) {
			var player = obj_player;
			switch (minigame) {
				case "woodcutting": {
					scr_minigame_woodcutting_initialize();
				}break;
				case "mining": {
					scr_minigame_woodcutting_initialize();
				}break;
			}
			minigameInitialized = true;
		} else {
			scr_minigame_close();
		}
	} else if (scr_keys_to_close() && minigame != "null") {
		minigame = "null";
		minigameInitialized = false;
		scr_close_global_hud_state();
	} else if (mouse_check_button_pressed(mb_left)) {
		switch (minigame) {
			case "woodcutting": {
				scr_minigame_woodcutting_mouse_pressed();
			}break;
			case "mining": {
				scr_minigame_mining_mouse_pressed();
			}break;
		}
	}
}