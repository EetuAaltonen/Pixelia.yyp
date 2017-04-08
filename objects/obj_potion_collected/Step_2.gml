/*move_towards_point(obj_potion_target.x, obj_potion_target.y, 8)
if (distance_to_object(obj_potion_target) < 40)
{
    scr_collected_item_info_text();
    global.potions += 1;
    instance_destroy();
}

/* */
/*  */
