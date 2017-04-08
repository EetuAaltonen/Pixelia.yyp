image_speed = 0;
if (instance_exists(obj_player))
{
    hspeed = (4 * obj_player.image_xscale) + obj_player.hspeed;
}
else
{
    instance_destroy();
}

