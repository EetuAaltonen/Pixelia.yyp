///Start dialog / Open Shop
if (distance_to_object(obj_use) == 0 && 
    image_blend != make_colour_hsv(0, 0, -1)) {
	
	if (instance_exists(obj_use)) {
        with (obj_use) instance_destroy();
    }
	if (instance_exists(obj_player)) {
		if (global.hudState == "null") {
		    if (instance_exists(obj_player)) {
		        if (scr_plr_neutral_action_states()) {
					scr_stash_open();
		        }
		    }
		}
    }
} else if (scr_keys_to_close()) {
	//Close Shop
	if (string_pos("stash", string(global.hudState))) {
		scr_stash_close();
	}
}