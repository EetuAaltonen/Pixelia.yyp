// scr_item_info_struct()

// Collect
if (scr_interact_with_player()) {
	if (scr_inventory_check_capacity(data[ItemData.Weight], true)) {
    //Move To Player
    moveToPlayer = true;
	} else {
	    alarm[1] = 50;
	}
}

// Item moves to player
scr_move_to_player();

// Gravity
scr_custom_gravity();

