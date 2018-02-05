var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var displayWidth = argument0;
var displayHeight = argument1;
view_set_wport(0, displayWidth);
view_set_hport(0, displayHeight);
	
global.wResolution = displayWidth;
global.hResolution = displayHeight;
global.resWAspect = (displayWidth/viewWidth);
global.resHAspect = (displayHeight/viewHeight);

display_set_gui_size(displayWidth, displayHeight);
window_set_size(displayWidth, displayHeight);

var controller = obj_screen_controller;
if (controller == self) {
	controller = self;	
}
var aspect = controller.baseWResolution/controller.baseHResolution;
var width = displayWidth;
var height = displayHeight;

if (displayWidth >= displayHeight) {
	height = min(controller.baseHResolution, displayHeight);
	width = height * aspect;
}

surface_resize(application_surface, width, height);