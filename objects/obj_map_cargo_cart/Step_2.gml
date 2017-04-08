image_angle = point_direction(x, y, target_x, target_y);
if (mp_grid_path(obj_map_grid.grid, path, x, y, target_x, target_y, 1))
{
    path_start(path, 1, path_action_stop, false);
}
//mp_potential_step_object(target_x, target_y, 1, obj_map_mountain);

///Image y scale
if (image_angle > 90 && image_angle < 270)
{
    image_yscale = -1;
}
else
{
    image_yscale = 1;
}

