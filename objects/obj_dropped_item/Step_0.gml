/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
}*/

//Initialize Data
if (sprite_index == spr_no_mask && data != "null") {
	sprite_index = data[0];
	name = data[1];
	weight = data[5];
	mask_index = sprite_index;
}

///Collect
if (distance_to_object(obj_use) == 0 && 
    image_blend != make_colour_hsv(0, 0, -1)) {
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
    image_blend != make_colour_hsv(0, 0, -1))
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

