///Shoot & remove an arrow
if (bow_can_shoot == true)
{
    if (arrowCount > 0)
    {
        instance_create(x, y, obj_plr_arrow);
        bow_can_shoot = false;
        alarm[1] = 50;
        added_amount = -1;
        //scr_save_to_inventory();
        arrowCount -= 1;
    }
}

