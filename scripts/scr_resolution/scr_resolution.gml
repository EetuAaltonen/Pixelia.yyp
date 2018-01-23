var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var displayWidth = argument0;
var displayHeight = argument1;
view_set_wport(0, displayWidth);
view_set_hport(0, displayHeight);
display_set_gui_size(displayWidth, displayHeight);
window_set_size(displayWidth, displayHeight);

var baseWidth = 1280;
var baseHeight = 720;
var aspect = baseWidth/baseHeight;
var width = displayWidth;
var height = displayHeight;

if (displayWidth >= displayHeight) {
	height = min(baseHeight, displayHeight);
	width = height * aspect;
}

surface_resize(application_surface, width, height);

global.resWAspect = (displayWidth/viewWidth);
global.resHAspect = (displayHeight/viewHeight);