if (infoText != "") {
	if (distance_to_object(obj_mouse) == 0 &&
		destination != room) {
	    image_index = 1;
	} else {
	    image_index = 0;
	}
} else if (infoText == "block") {
	//Create Block Object
	instance_destroy();
}

if (instance_exists(obj_map_cargo_cart)) {
	if (distance_to_object(obj_map_cargo_cart) == 0) {
		if (obj_map_cargo_cart.destination == destination) {
			if (room != destination) {
				scr_room_goto(destination);
				scr_map_close();
			}
		}
	}
}