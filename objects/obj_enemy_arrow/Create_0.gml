if (instance_exists(obj_player))
{
    move_towards_point(obj_player.x, obj_player.y, 10);
}
else
{
    instance_destroy();
}
gravity = 0;
image_angle = direction;
can_hurt = true;

