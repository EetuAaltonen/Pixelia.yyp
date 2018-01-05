var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

//Map
if (global.hudState == "map") {
    draw_sprite(spr_world_map,0, viewX, viewY);
}

