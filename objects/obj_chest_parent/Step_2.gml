//Gravity
scr_custom_gravity();

//Open
if (distance_to_object(obj_use) == 0 && opened == false && 
    image_blend != make_colour_hsv(0, 0, 255))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
	if (instance_exists(obj_player)) {
		obj_player.action_state = "looting";
	}
	global.hudState = "looting"
	image_index = 1;
	getLoot = true;
    opened = true;
}

//Get loot
var tempAmount = ds_list_size(global.tempLoot);
var itemAmount = ds_list_size(items);
if (tempAmount != itemAmount && opened && getLoot == false) {
	//Remove Listed Items
	scr_listed_item_remove();
	
	if (itemAmount > 0 && tempAmount > 0) {
		ds_list_clear(items);
		ds_list_copy(items, global.tempLoot);
		getLoot = true;
		
	} else {
		ds_list_clear(global.tempLoot);
		scr_plr_set_action_state_null();
		global.hudState = "null";
		instance_destroy();
	}
}