if (moveToPlayer == true) {
    depth = obj_player.depth - 1;
    image_speed = 0;
    move_towards_point(obj_player.x, obj_player.y, obj_player.speed + 1);
    if (distance_to_object(obj_player) <= 1) {
        //Toast
        scr_add_new_toast(name);
        //Add to inventory
        scr_add_to_inventory(data, 1); //scr_save_to_inventory(spriteName, addedCount);
        obj_player.highlight = false;
        instance_destroy();  
    } 
}

