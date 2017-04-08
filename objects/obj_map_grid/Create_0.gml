cell_width = 2;
cell_height = 2;

hcells = __view_get( e__VW.WView, 0 ) / cell_width;
vcells = __view_get( e__VW.HView, 0 ) / cell_height;

grid = mp_grid_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), hcells, vcells, cell_width, cell_height);

mp_grid_add_instances(grid, obj_map_mountain, false);

