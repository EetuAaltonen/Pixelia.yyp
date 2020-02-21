//Get Material
if (bgColor == "null") {
	scr_collectable_get_material();
}

//Sprite Index
image_index = (maxMaterials-source);

var stopMining = false;

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
		if (scr_keys_to_close(HudStates.Minigame)) {
			///Reset action state
			if (!global.popUp) {
				
				scr_plr_set_action_state_null();
				stopMining = true;
			}
		} else if (player.image_index > (player.image_number - 1) && canHit) {
			//Stop Player Animation
			player.sprite_index = spr_player;
			player.image_index = 0;
			player.image_speed = 0;
			
			scr_source_hit();
			source -= 1;
			canHit = false;
			mined = true;
				
			if (source == 0) {
				stopMining = true;
			}
			
		} else if (player.image_index < (player.image_number - 1) && !canHit) {
			canHit = true;
		}
	} else if (mining && player.actionState != actionState) {
		stopMining = true;
	}
} else {
	if (mining) {
		stopMining = true;
	}
}
if (stopMining) {
	mining = false;
	scr_highlight_remove();
	if (source < maxMaterials && mined) {
		//Only First Hit Triggers The Respawn Time
		if (alarm[1] <= 0) {
			alarm[1] = scr_time_sec_to_alarm(scr_time_convert(respawnTime/global.clockTimeSpeed,"hh","ss"));
			respawnDateTime = scr_time_increase(respawnTime, "hh");
		}
	}
	mined = false;
}