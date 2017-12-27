var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var tempHours = string(hours);
var tempMinutes = string(minutes);

if (hours < 10) {
	tempHours = "0" + string(hours);
}

if (minutes < 10) {
	tempMinutes = "0" + string(minutes);
}

draw_text(viewX+5, viewY+46, "Clock: " + tempHours + ":" + tempMinutes);

//draw_sprite_ext(spr_darkness,0,viewX,viewY,viewWidth,viewHeight,0,c_white,global.darkness);