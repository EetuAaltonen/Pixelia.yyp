/*//Attack
if (distance_to_object(obj_player) < 100 and obj_player.x > x)
{
    //Jump
    if (hspeed > 0 and place_meeting(x+10, y, obj_grass) //!place_free(x+10, y)
        and !place_free(x, y+3))
    {
        jump = true;
        alarm[1] = 20; //Jump --> false
        vspeed = -5;
        hspeed = 2;
    }
    else
    {
        hspeed = 1.5;
    }
}
else if (distance_to_object(obj_player) < 100 and obj_player.x < x)
{
    //Jump
    if (hspeed < 0 and place_meeting(x-10, y, obj_grass) //!place_free(x-10, y)
        and !place_free(x, y+3))
    {
        jump = true;
        alarm[4] = 20; //Jump --> false
        vspeed = -5;
        hspeed = -2;
    }
    else if (distance_to_object(obj_player) < 100)
    {
        hspeed = -1.5;
    } 
}
else
{
    hspeed = 0;
}

//Punch / Hit
if (distance_to_object(obj_player) < 6 and sprite_index == spr_rat
    and can_punch == true)
{
    can_punch = false;
    alarm[3] = 50; //Cooldown
    instance_create(x+15, y, obj_enemy_hit);
    (instance_nearest(x, y, obj_enemy_hit)).str = str;
}
else if (distance_to_object(obj_player) < 6 and sprite_index == spr_rat_1
         and can_punch == true)
{
    can_punch = false;
    alarm[3] = 50; //Cooldown
    instance_create(x-15, y, obj_enemy_hit);
    (instance_nearest(x, y, obj_enemy_hit)).str = str;
}

