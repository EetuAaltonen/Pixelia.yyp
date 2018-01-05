if (distance_to_object(obj_use) == 0 && 
    obj_player.action_state = "null") {
    if (instance_exists(obj_use)) {
        with (obj_use) instance_destroy();
    }
    scr_add_new_toast("Locked");
}
