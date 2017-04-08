///Aiming
if (instance_exists(obj_player) and obj_player.action_state == "bow")
{   
    dir_now := point_direction(obj_player.x,obj_player.y,x,y);
    dir_new := (dir_now + aim_speed + 360)mod(360);
    x := lengthdir_x(50,dir_new) + obj_player.x;
    y := lengthdir_y(50,dir_new) + obj_player.y;
    hspeed = obj_player.hspeed;
    vspeed = obj_player.vspeed;
    if ((keyboard_check(vk_up) and !keyboard_check(vk_down) and
        (obj_player.image_xscale = 1 and (x > (obj_player.x + 5)))) or
        (keyboard_check(vk_up) and !keyboard_check(vk_down) and
        (obj_player.image_xscale = 1 and  y > obj_player.y)))
    {
        if (keyboard_check(vk_shift))
        {
            aim_speed = 2;
        }
        else
        {
            aim_speed = 1;    
        }
    }
    else if ((keyboard_check(vk_up) and !keyboard_check(vk_down) and
        (obj_player.image_xscale = -1 and (x < (obj_player.x - 5)))) or
        (keyboard_check(vk_up) and !keyboard_check(vk_down) and
        (obj_player.image_xscale = -1 and y > obj_player.y)))
    {
        if (keyboard_check(vk_shift))
        {
            aim_speed = -2;
        }
        else
        {
            aim_speed = -1;    
        }
    }
    else if ((keyboard_check(vk_down) and !keyboard_check(vk_up) and
        (obj_player.image_xscale = 1 and (x > (obj_player.x + 5)))) or
        (keyboard_check(vk_down) and !keyboard_check(vk_up) and
        (obj_player.image_xscale = 1 and y < obj_player.y)))
    {
        if (keyboard_check(vk_shift))
        {
            aim_speed = -2;
        }
        else
        {
            aim_speed = -1;    
        }
    }
    else if ((keyboard_check(vk_down) and !keyboard_check(vk_up) and
        (obj_player.image_xscale = -1 and (x < (obj_player.x - 5)))) or
        (keyboard_check(vk_down) and !keyboard_check(vk_up) and
        (obj_player.image_xscale = -1 and y < obj_player.y)))
    {
        if (keyboard_check(vk_shift))
        {
            aim_speed = 2;
        }
        else
        {
            aim_speed = 1;    
        }
    }
    else
    {
        aim_speed = 0;
    }
}
else
{
    instance_destroy();
}

