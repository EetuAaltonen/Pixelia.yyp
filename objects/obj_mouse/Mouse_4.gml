if (instance_exists(obj_map_cargo_cart)) {
    if (global.hudState == "map") {
        if (distance_to_object(obj_map_castle) == 0) {
            obj_map_cargo_cart.target_x = (mouse_x / 2) * 2 + 1;
            obj_map_cargo_cart.target_y = (mouse_y / 2) * 2 + 1;
            obj_map_cargo_cart.alarm[1] = 1;
        }
    }
}

