// Gravity
scr_custom_gravity();

// TODO: Fix dec chair
// Sit
/*if (scr_interact_with_player()) {
	reserved = true;
	obj_player.x = x;
	obj_player.y = y-11;
	obj_player.actionState = "sitting";
	if (instance_exists(obj_dec_table)) {
	    if (distance_to_object(obj_dec_table) < 5) {
	        if (instance_nearest(x,y,obj_dec_table).x > x) {
	            sitting_direction = 1;
	        } else if (instance_nearest(x,y,obj_dec_table).x < x) {
	            sitting_direction = -1;
	        }
	    } else {
	        sitting_direction = "null";
	    }
	}
	if (sitting_direction != "null")
	{
	    obj_player.image_xscale = sitting_direction;
	}
	image_blend= scr_highlight_default_value();
	obj_player.highlight = false;
}

///Reset values
if (obj_player.actionState == Actions.Null)
{
	sitting_direction = "null";
	reserved = false;
}