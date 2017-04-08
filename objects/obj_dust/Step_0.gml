image_speed=0.1;
vspeed=obj_player.vspeed;
hspeed=obj_player.hspeed;

if obj_player.hspeed>=3 and obj_player.sprite_index==spr_player
{
    visible=true;
    x=obj_player.x-28;
    y=obj_player.y+12;
}
else if obj_player.hspeed<=-3 and obj_player.sprite_index==spr_player
{
    visible=true;
    x=obj_player.x+28;
    y=obj_player.y+12;
}
else
{
    visible=false;
}
if place_free(x,y+10)
{
    visible=false;
}

if (global.room_change = 1)
{
    instance_destroy();
}

