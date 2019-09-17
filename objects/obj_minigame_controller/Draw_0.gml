if (global.hudState == HudStates.Minigame) {
	if (instance_exists(obj_player)) {
		var viewX = camera_get_view_x(view_camera[0]);
		var viewY = camera_get_view_y(view_camera[0]);
		var viewWidth = camera_get_view_width(view_camera[0]);
		var viewHeight = camera_get_view_height(view_camera[0]);
	
		switch (obj_player.actionState) {
			case Actions.Fishing: {
				// Catching fish
				if (!is_undefined(fishingState)) {
					if (fishingState == Fishing.Minigame || fishingState == Fishing.ResultMessage) {
						draw_sprite(spr_fishing_minigame_bg, 0, viewX+(viewWidth/2), viewY+(viewHeight/2));
						draw_sprite_ext(spr_fishing_minigame_area_2, 0, viewX+(viewWidth/2) - (area1Xscale/2*4), viewY+(viewHeight/2), area1Xscale*4, 1, 0, c_white, 1);
						draw_sprite_ext(spr_fishing_minigame_area_1, 0, viewX+(viewWidth/2) - area1Xscale/2, viewY+(viewHeight/2), area1Xscale, 1, 0, c_white, 1);
						draw_sprite_ext(spr_fishing_bobber, 0, viewX+(viewWidth/2) + bobberX, viewY+(viewHeight/2), 3, 3, imageAngle, c_white, 1);

					}
					if (fishingState == Fishing.ResultMessage) {
						// Font
						draw_set_font(fnt_inventory_text);
						draw_set_color(c_black);
						draw_set_halign(fa_center);
						draw_set_valign(fa_middle);
        
						draw_text(viewX+(viewWidth/2), viewY+(viewHeight/2) - 20, string(successText));
					}
				}
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