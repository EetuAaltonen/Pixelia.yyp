// Facing direction
if (is_undefined(facingDirection) && instance_exists(obj_fish_swarm)) {
    if ((instance_nearest(x, y, obj_fish_swarm)).x > x) {
        facingDirection = 1;
    } else {
        facingDirection = -1;
    }
}