///Fly to water
if (inWater == false)
{
    move_towards_point((instance_nearest(x, y, obj_fishing_vein)).x,
                       ((instance_nearest(x, y, obj_fishing_vein)).y - 
                       distance_to_object(instance_nearest(x, y, obj_fishing_vein))), 2); 
    if (distance_to_object(obj_fishing_vein) < 1)
    {
        hspeed = 0;
        vspeed = 0;
        inWater = true;
        //Time to fishing minigame
        //Time to spawn a fish
        //obj_fishing_vein.alarm[1] = (round(random(300)) + 300);
        //Animation
        alarm[1] = round(random_range(50, 80));
    }
}

///Fly to player
if (toPlayer == true)
{
    move_towards_point(obj_player.x, obj_player.y - (distance_to_object(obj_player)/3), 3); 
    if (distance_to_object(obj_player) < 1)
    {
        hspeed = 0;
        vspeed = 0;
        var rndNumber = random_range(0.01, 1);
        show_message(string(rndNumber) + "<" + string(catchChange));
        if (rndNumber < catchChange)
        {
            //Instance create dropped item
            sprite_index_item = spr_icon_salmon;
            instance_create(x, y, obj_dropped_item);
            (instance_nearest(x, y, obj_dropped_item)).sprite_index = sprite_index_item;
            (instance_nearest(x, y, obj_dropped_item)).typeId = typeId;
            (instance_nearest(x, y, obj_dropped_item)).get_attributes = true;
        }
        scr_plr_set_action_state_null();
    }
}

///Instance destroy
if not(obj_player.action_state == "fishing")
{
    instance_destroy();
}

