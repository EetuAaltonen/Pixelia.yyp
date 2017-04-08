///Arrow count == 0
if (arrowCount == 0)
{
    var obj = obj_player;
    if (instance_exists(obj_player))
    {
        obj.hspeed = 0;
        obj.sprite_index = spr_player;
        obj.solid = true;
        obj.mask_index = spr_player;
        obj.action_state = "null";
    }
}

///Position & Image angle
if (instance_exists(obj_player))
{
    x = obj_player.x;
    y = obj_player.y;
    
    //Image angle
    if (instance_exists(obj_plr_aim))
    {
        image_angle = point_direction(x, y, obj_plr_aim.x, obj_plr_aim.y);
    }
}
else
{
    instance_destroy();
}

