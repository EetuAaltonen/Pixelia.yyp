var custom_gravity = 0.3;
var maxVSpeed = 10;
var maxInWater = 0.5
if (vspeed < maxVSpeed) {
    if (instance_exists(obj_block_water)) {
        if (distance_to_object(obj_block_water) == 0) {
            if (vspeed < maxInWater) {
                vspeed += custom_gravity*global.delta;
            } else if (vspeed >= maxInWater) {
                vspeed = maxInWater;
            }
        } else {
            if (vspeed < maxVSpeed) {
                vspeed += custom_gravity*global.delta;
            }
        }
    } else {
        if (vspeed < maxVSpeed) {
            vspeed += custom_gravity*global.delta;
        }
    }
}

//Too fast falling
if (vspeed > maxVSpeed) {
    vspeed = maxVSpeed;
}
