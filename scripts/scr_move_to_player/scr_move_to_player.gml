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
	requiredLevel; 9
}*/

if (moveToPlayer == true) {
    depth = obj_player.depth - 1;
    image_speed = 0;
    move_towards_point(obj_player.x, obj_player.y, obj_player.speed + 1);
    if (distance_to_object(obj_player) <= 1) {
        //Add to inventory
        scr_inventory_add_item(data, data[3]);
		//Toast
        scr_add_new_toast(string(data[3]) + "x " + name);
        obj_player.highlight = false;
        instance_destroy();  
    } 
}

