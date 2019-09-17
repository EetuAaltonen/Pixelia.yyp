// Facing direction
if (is_undefined(facingDirection) && instance_exists(obj_fishing_vein)) {
    if ((instance_nearest(x, y, obj_fishing_vein)).x > x) {
        facingDirection = 1;
    } else {
        facingDirection = -1;
    }
}