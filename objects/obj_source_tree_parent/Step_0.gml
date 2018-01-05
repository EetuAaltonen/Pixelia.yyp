///Image index
//scr_source_image_index();

if (material == "null") {
	material = scr_collectable_get_material(sprite_index);	
}

//Sprite Index
if (source == maxMaterials) {
	sprite_index = spriteUntouch;	
}

if (instance_exists(obj_player)) {
	var player = obj_player;
	//Cutting Wood
	if (cuttingWood && player.actionState == "woodcutting") {
		if (player.image_index > (player.image_number - 1) && canHit) {
			if (sprite_index != spriteHit) {
				sprite_index = spriteHit;
			}
			scr_source_hit();
			source -= 1;
			canHit = false;
				
			if (source == 0) {
				cuttingWood = false;
				sprite_index = spr_source_oak_empty;
				scr_highlight_remove();
				scr_plr_set_action_state_null();
				alarm[1] = respawnTime;
			}
			
		} else if (player.image_index < (player.image_number - 1) && !canHit) {
			canHit = true;
		}
	} else if (cuttingWood && player.actionState != "woodcutting") {
		cuttingWood = false;
		scr_highlight_remove();
		if (source < maxMaterials) {
			alarm[1] = respawnTime;
		}
	}

	///Start Cutting
	if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1)) {
	    if (instance_exists(obj_use)) {
	        with (obj_use) instance_destroy();
	    }
		
		player.image_xscale = 1;
		if (x < player.x) {
			player.image_xscale = -1;
		}
		
		player.actionState = "woodcutting";
		canHit = true;
		cuttingWood = true;
	}
} else {
	if (cuttingWood) {
		cuttingWood = false;
		scr_highlight_remove();
		alarm[1] = respawnTime;
	}
}