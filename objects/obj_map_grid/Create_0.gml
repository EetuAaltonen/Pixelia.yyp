var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
// TODO: Clean this code

cell_width = 2;
cell_height = 2;

//hcells = (viewWidth / cell_width);
//vcells = (viewHeight / cell_height);
hcells = __view_get( e__VW.WView, 0 ) / cell_width;
vcells = __view_get( e__VW.HView, 0 ) / cell_height;

grid = mp_grid_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), hcells, vcells, cell_width, cell_height);
//grid = mp_grid_create(viewWidth, viewHeight, hcells, vcells, cell_width, cell_height);

mp_grid_add_instances(grid, obj_map_block, false);

