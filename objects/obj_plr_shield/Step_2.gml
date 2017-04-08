hspeed = obj_player.hspeed;
vspeed = obj_player.vspeed;

if (obj_player.image_xscale == 1)
{
    image_xscale = 1;
    x = obj_player.x + 10;
    y = obj_player.y;
}
else
{
    image_xscale = -1;
    x = obj_player.x - 10;
    y = obj_player.y;
}

