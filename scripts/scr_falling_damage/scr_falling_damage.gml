if (vspeed > 7 and vspeed < 10) {
    global.healthPoints -= 1
    //Blood
    part_particles_create(global.ps, obj_hitbox.x, obj_hitbox.y, global.pt_Blood, random_range(5,10));
} else if (vspeed > 9) {
    global.healthPoints -= 5
    //Blood
    part_particles_create(global.ps, obj_hitbox.x, obj_hitbox.y, global.pt_Blood, random_range(5,10));
}
