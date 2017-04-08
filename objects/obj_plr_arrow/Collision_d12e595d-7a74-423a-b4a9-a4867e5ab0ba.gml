/*if not((distance_to_object(obj_player) == 0) and
    (distance_to_object(obj_plr_bow) == 0) and
    (distance_to_object(obj_plr_aim) == 0))
{       
    speed = 0;
    gravity = 0;*/
    instance_create(x, y, obj_arrow_effect);
    /*alarm[1] = 200;
    
    var x1, y1;
    near = instance_nearest(x, y, object_index);
    x1 = x - ((instance_nearest(x, y, object_index)).x);
    y1 = y - ((instance_nearest(x, y, object_index)).y);
    
    can_hurt = false;
}*/
instance_destroy();

/* */
/*  */
