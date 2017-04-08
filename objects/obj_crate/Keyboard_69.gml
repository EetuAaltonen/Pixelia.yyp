//Check if can drop
if (waiting_releasing == true)
{
    if (distance_to_object(obj_solidify_parent) >= 10)
    {
        //Drop
        picked = false;
        //This fix instantly pickup
        alarm[0] = 30;
    }
}

