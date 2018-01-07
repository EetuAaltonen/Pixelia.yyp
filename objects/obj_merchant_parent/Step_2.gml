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
					scr_shop_open();
		        }
		    }
		}
		/*var spriteIndex = sprite_get_name(sprite_index);
        var dialogs = scr_dialog_get_options(spriteIndex, false, false);
		if (is_array(dialogs)) {
			scr_dialog(dialogs);
		} else {
			scr_add_new_toast("Nothing");
		}*/
    }
} else if (scr_keys_to_close()) {
	//Close Shop
	if (string_pos("shop", string(global.hudState))) {
		scr_shop_close();
	}
}