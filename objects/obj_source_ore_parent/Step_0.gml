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
	if (!mining && distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1)) {
	    if (instance_exists(obj_use)) {
	        with (obj_use) instance_destroy();
	    }
		
		player.image_xscale = 1;
		if (x < player.x) {
			player.image_xscale = -1;
		}
		
		player.actionState = actionState;
		canHit = true;
		mining = true;
	} else if (mining && player.actionState == actionState) {
		//Stop
		if (scr_keys_to_close()) {
			///Reset action state
			if (!global.popUp) {
				mining = false;
				scr_highlight_remove();
				scr_plr_set_action_state_null();
				alarm[1] = scr_to_sec(respawnTime);
			}
		} else if (player.image_index > (player.image_number - 1) && canHit) {
			if (sprite_index != spriteHit) {
				sprite_index = spriteHit;
			}
			scr_source_hit();
			source -= 1;
			canHit = false;
				
			if (source == 0) {
				mining = false;
				sprite_index = spriteEmpty;
				scr_highlight_remove();
				scr_plr_set_action_state_null();
				alarm[1] = scr_to_sec(respawnTime);
			}
			
		} else if (player.image_index < (player.image_number - 1) && !canHit) {
			canHit = true;
		}
	} else if (mining && player.actionState != actionState) {
		mining = false;
		scr_highlight_remove();
		if (source < maxMaterials) {
			alarm[1] = scr_to_sec(respawnTime);
		}
	}
} else {
	if (mining) {
		mining = false;
		scr_highlight_remove();
		alarm[1] = scr_to_sec(respawnTime);
	}
}

