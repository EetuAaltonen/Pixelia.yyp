//Get Material
if (bgColor == "null") {
	scr_collectable_get_material();
}

//Sprite Index
if (source == maxMaterials) {
	image_index = 0;	
}

if (instance_exists(obj_player)) {
	var player = obj_player;
	//Mining
	if (scr_interact_with_player() && !mining) {
		player.image_xscale = 1;
		if (x < player.x) {
			player.image_xscale = -1;
		}
		player.actionState = actionState;
		canHit = true;
		mining = true;
		scr_minigame_start("mining");
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
			//Stop Player Animation
			player.sprite_index = spr_player;
			player.image_index = 0;
			player.image_speed = 0;
			
			scr_source_hit();
			image_index += 1;
			source -= 1;
			canHit = false;
				
			if (source == 0) {
				mining = false;
				scr_highlight_remove();
				scr_close_global_hudstate();
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

