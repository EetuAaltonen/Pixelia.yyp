if (instance_exists(obj_player)) {  
    vspeed = obj_player.vspeed;
    hspeed = obj_player.hspeed;
    y = obj_player.y;
    if (obj_player.sprite_index == spr_plr_crouch)
    {
        sprite_index = spr_hitbox_small;
    }
    else
    {
        sprite_index = spr_hitbox;
    }
     
    if (obj_player.image_xscale == 1)
    {
        x = obj_player.x-2;
        image_xscale = 1;  
    }
    else if (obj_player.image_xscale == -1)
    {
        x = obj_player.x+2;
        image_xscale = -1; 
    }
}
else
{
    instance_destroy();
}  

