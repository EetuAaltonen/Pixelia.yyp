//scr_item_info_struct()
if (moveToPlayer) {
    depth = obj_player.depth - 1;
    image_speed = 0;
    move_towards_point(obj_player.x, obj_player.y, obj_player.speed + 1);
    if (distance_to_object(obj_player) <= 1) {
        //Add to inventory
        scr_inventory_add_item(data, data[ItemData.Count]);
		
		//Toast
        scr_add_new_toast(string(data[ItemData.Count]) + "x " + data[ItemData.Name]);
		
		scr_highlight_remove();
        instance_destroy();  
    } 
}

