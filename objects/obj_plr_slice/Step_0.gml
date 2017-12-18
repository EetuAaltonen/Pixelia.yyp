/// @description Hit target
if (distance_to_object(obj_block_parent) == 0) {
    speed *= 0.5;
}

if (speed < 0.5) {
    instance_destroy();
}

