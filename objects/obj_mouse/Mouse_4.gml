if (instance_exists(obj_map_cargo_cart)) {
    if (global.hudState == HudStates.Map) {
        if (distance_to_object(obj_map_object) == 0) {
			var cargo = obj_map_cargo_cart;
            cargo.target_x = (mouse_x / 2) * 2 + 1;
            cargo.target_y = (mouse_y / 2) * 2 + 1;
            cargo.alarm[1] = 1;
			var destination = (instance_nearest(x, y, obj_map_object)).destination;
			cargo.destination = destination;
        }
    }
}