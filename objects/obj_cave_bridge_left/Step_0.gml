/*if (instance_exists(obj_player)) {
    if (solid) {
        if (distance_to_object(obj_player) <= 2) {
            if (y < obj_player.y) {
                solid = false;
                mask_index = spr_no_mask;
            } else if (keyboard_check_pressed(vk_down) || keyboard_check(vk_down)) {
                solid = false;
                mask_index = spr_no_mask;
            }
        }
    } else {
        if (distance_to_object(obj_player) > 10) {
            solid = true;
            mask_index = spr_cave_bridge_left;
        }
    }
}

if (solid) {
    image_blend = make_colour_hsv(0, 0, 255);
} else {
    image_blend = make_colour_hsv(0, 0, 150);
}

