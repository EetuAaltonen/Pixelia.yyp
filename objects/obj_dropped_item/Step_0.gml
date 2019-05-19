//scr_item_info_struct()

//Initialize Data
if (sprite_index == spr_no_mask && data != "null") {
	if (scr_dropped_item_search_to_stack(data)) {
		instance_destroy();	
	}
	sprite_index = data[0];
	name = data[1];
	weight = data[11];
	count = data[3];
	mask_index = sprite_index;
}

///Collect
if (distance_to_object(obj_use) == 0 && 
    image_blend != make_colour_hsv(0, 0, 255)) {
    if (instance_exists(obj_use)) {
        with (obj_use) instance_destroy();
    }
    scr_check_weight();
}

///Item moves to player
scr_move_to_player();

///Gravity
scr_custom_gravity();


/*///Fill info
if (get_attributes == true)
{
    scr_collectable_create_attributes();
}

///Collect
if (distance_to_object(obj_use) == 0 && 
    image_blend != make_colour_hsv(0, 0, 255))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    scr_check_weight();
}

///Item moves to player
scr_move_to_player();

///Gravity
scr_custom_gravity();

