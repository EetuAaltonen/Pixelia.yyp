draw_self();
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

///Draw fishing line
var targetX, targetY;
if (instance_exists(obj_player)) {
    if (obj_player.image_xscale == 1) {
        targetX = obj_player.x + 9;
        targetY = obj_player.y - 7;
    } else {
        targetX = obj_player.x - 9;
        targetY = obj_player.y - 7;
    }
} else {
    instance_destroy();
}
draw_line_colour(x, y-4, targetX, targetY, c_gray, c_gray);