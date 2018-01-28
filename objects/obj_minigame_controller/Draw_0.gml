if (global.hudState == "minigame") {
	if (minigame != "null" && minigameInitialized) {
		if (instance_exists(obj_player)) {
			switch(minigame) {
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