/*if (global.damage == 1)
{
    //Spike trap
    if (distance_to_object(obj_spikes) == 0)
    {
        (instance_nearest(x , y, obj_spikes)).image_index = 1;
        (instance_nearest(x , y, obj_spikes)).alarm[1] = 2000;
    }
    global.health -= 1;
    scr_got_damage();
}

/* */
/*  */
