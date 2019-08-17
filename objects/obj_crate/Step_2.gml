//Check if already picked up
if (picked == false)
{
    //Gravity
    scr_custom_gravity();
    //Solid
    solid = true;
    mask_index = spr_crate;
    //Pickup
    if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, 255))
    {
        if (instance_exists(obj_use))
        {
            with (obj_use) instance_destroy();
        }
        //Check if player can pickup the crate
        if (obj_player.actionState == Actions.Null ||
            obj_player.actionState == Actions.Jump)
        {
            if (instance_exists(obj_player))
            {
                obj_player.actionState = Actions.Lift;
                //Pickup
                picked = true;
            }
        }
    }
}
else
{
    //Carry
    //Remove solid
    solid = false;
    mask_index = spr_no_mask; //This remove mask
    if (instance_exists(obj_player))
    {
        //Check player's direction
        if (obj_player.image_xscale == 1)
        {
            x = obj_player.x+20;
            y = obj_player.y;
        }
        else
        {
            x = obj_player.x-20;
            y = obj_player.y;
        }
    }
    else
    {
        //Drop
        picked = false;
    }
}

