//Get Material
if (material == "null") {
	material = "";
	scr_collectable_get_material();
}

//Sprite Index
if (source == maxMaterials) {
	sprite_index = spriteUntouch;	
}

if (instance_exists(obj_player)) {
	var player = obj_player;
	//Cutting Wood
	if (!cuttingWood && distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1)) {
	    if (instance_exists(obj_use)) {
	        with (obj_use) instance_destroy();
	    }
		
		player.image_xscale = 1;
		if (x < player.x) {
			player.image_xscale = -1;
		}
		
		player.actionState = actionState;
		canHit = true;
		cuttingWood = true;
		scr_minigame_start("woodcutting");
	} else if (cuttingWood && player.actionState == actionState) {
		//Stop
		if (scr_keys_to_close()) {
			///Reset action state
			if (!global.popUp) {
				cuttingWood = false;
				scr_highlight_remove();
				scr_plr_set_action_state_null();
				alarm[1] = scr_to_sec(respawnTime);
			}
		} else if (player.image_index > (player.image_number - 1) && canHit) {
			//Stop Player Animation
			player.sprite_index = spr_player;
			player.image_index = 0;
			player.image_speed = 0;
			
			if (sprite_index != spriteHit) {
				sprite_index = spriteHit;
			}
			scr_source_hit();
			source -= 1;
			canHit = false;
				
			if (source == 0) {
				cuttingWood = false;
				sprite_index = spriteEmpty;
				scr_highlight_remove();
				scr_close_global_hudstate();
				alarm[1] = scr_to_sec(respawnTime);
			}
			
		} else if (player.image_index < (player.image_number - 1) && !canHit) {
			canHit = true;
		}
	} else if (cuttingWood && player.actionState != actionState) {
		cuttingWood = false;
		scr_highlight_remove();
		if (source < maxMaterials) {
			alarm[1] = scr_to_sec(respawnTime);
		}
	}
} else {
	if (cuttingWood) {
		cuttingWood = false;
		scr_highlight_remove();
		alarm[1] = scr_to_sec(respawnTime);
	}
}