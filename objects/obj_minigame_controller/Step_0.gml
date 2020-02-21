if (global.hudState == HudStates.Minigame) {
	if (instance_exists(obj_player)) {
		switch (obj_player.actionState) {
			case Actions.Fishing: {
				if (fishingState == Fishing.Minigame) {
					if (keyboard_check_pressed(vk_space)) {
						fishingState = Fishing.ResultMessage;
						bobberSpeed = 0;
						imageAngle = 0;
						// TODO: Calculate here fishing loot
						scr_minigame_fishing_get_results();
					} else {
						scr_minigame_fishing_bobber_movement();
						scr_minigame_fishing_bobber_angle();
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
	} else if (scr_keys_to_close(HudStates.Minigame) && minigame != "null") {
		minigame = "null";
		minigameInitialized = false;
		scr_global_hud_state_reset();
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