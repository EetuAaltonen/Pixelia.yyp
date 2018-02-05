var custom_gravity = 0.2*global.delta;
var maxVSpeed = 8*global.delta
if (vspeed < maxVSpeed) {
    if (instance_exists(obj_block_water)) {
        if (distance_to_object(obj_block_water) == 0) {
            if (vspeed < 0.5*global.delta) {
                vspeed += custom_gravity;
            } else if (vspeed >= 0.5*global.delta) {
                vspeed = 0.5*global.delta;
            }
        } else {
            if (vspeed < maxVSpeed) {
                vspeed += custom_gravity;
            }
        }
    } else {
        if (vspeed < maxVSpeed) {
            vspeed += custom_gravity;
        }
    }
}

//Too fast falling
if (vspeed < -(maxVSpeed)) {
    vspeed = -(maxVSpeed);
}
