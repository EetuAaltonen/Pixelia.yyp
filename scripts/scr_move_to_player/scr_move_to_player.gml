if (moveToPlayer == true) {
    depth = obj_player.depth - 1;
    image_speed = 0;
    move_towards_point(obj_player.x, obj_player.y, obj_player.speed + 1);
    if (distance_to_object(obj_player) <= 1) {
        //Add to inventory
        scr_inventory_add_item(data, 1);
		//Toast
        scr_add_new_toast(name);
        obj_player.highlight = false;
        instance_destroy();  
    } 
}

