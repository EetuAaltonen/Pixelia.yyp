if (instance_exists(obj_player)) {
	var player = obj_player;
	if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1) &&
	    scr_plr_neutral_action_states()) {
			
	    if (instance_exists(obj_use)) {
	        with (obj_use) instance_destroy();
	    }
		
	    player.x = x;
	    player.actionState = "ladder";
	    image_blend = make_colour_hsv(0, 0, -1);
	    player.highlight = false;
	}
}