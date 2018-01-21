///Moving speed
if (x == target_x && y == target_y + wave) {
    moving_speed = 0;
    wave *= -1;
}
if (distance_to_point(target_x, target_y + wave) < sprite_height/4) {   
    if (moving_speed < (max_speed/10)) {   
        moving_speed += 0.001;
    } else {
        moving_speed *= 0.6;
    }
} else {
    if (moving_speed < max_speed) {
        moving_speed += 0.8;
    } 
}


///Move to target
if (target_x != false && target_y != false) {
    move_towards_point(target_x, target_y + wave,
    min(moving_speed, point_distance(x, y, target_x, target_y + wave)));
} else {
    speed = 0;
}

///Bloom size
if (speed < (max_speed/2)) { 
    if (size < max_size) {
        size += add_size;
    }
} else {
    if (size > (sprite_width * 1.5)) {
        size -= (add_size * 2);
    }
}

