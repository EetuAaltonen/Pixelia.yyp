///Gravity
scr_custom_gravity();

///Collect
if (scr_interact_with_player() && !collected) { 
    collected = true;
    global.xp += (5 * global.level);
    image_index = 1;
    alarm[0] = 20;
}

///Instance destroy
if (image_alpha == 0) {
    obj_player.highlight = false;
    instance_destroy();
}

