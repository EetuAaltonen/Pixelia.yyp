var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

draw_sprite_ext(spr_darkness,0,viewX,viewY,viewWidth,viewHeight,0,c_white,global.darkness);