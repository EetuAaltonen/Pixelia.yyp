if (instance_exists(obj_goal) && instance_exists(obj_player))
{
    image_angle = point_direction(x, y, obj_goal.x, obj_goal.y);
    x = obj_player.x
    y = obj_player.y
    image_alpha = 0.7;
}
else
{
    instance_destroy();
}

