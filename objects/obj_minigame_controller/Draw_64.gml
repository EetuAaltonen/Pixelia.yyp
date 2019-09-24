if (global.hudState == HudStates.Minigame) {
	if (instance_exists(obj_player)) {
		switch (obj_player.actionState) {
			case Actions.Fishing: {
				scr_minigame_fishing_draw_game()
			}break;
			case Actions.Woodcutting: {
			
			}break;
			case Actions.Mining: {
			
			}break;
		}
	}
}

/*if (global.hudState == HudStates.Minigame) {
	if (minigame != "null" && minigameInitialized) {
		if (instance_exists(obj_player)) {
			switch (minigame) {
				case "woodcutting": {
					scr_minigame_woodcutting_draw();
				}break;
				case "mining": {
					scr_minigame_woodcutting_draw();
				}break;
			}
		} else {
			minigame = "null";
		}
	}
}