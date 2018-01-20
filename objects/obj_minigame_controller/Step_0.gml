if (global.hudState == "minigame") {
	if (minigame != "null" && !minigameInitialized) {
		if (instance_exists(obj_player)) {
			var player = obj_player;
			switch(minigame) {
				case "woodcutting": {
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
		scr_close_global_hudstate();
	} else if (mouse_check_button_pressed(mb_left)) {
		switch(minigame) {
			case "woodcutting": {
				scr_minigame_woodcutting_mouse_pressed();
			}break;
		}
	}
}