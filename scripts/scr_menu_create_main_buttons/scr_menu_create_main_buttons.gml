var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var buttons = [
	["loadGame", "Play"],
	["achievements", "Achievements"],
	["settings", "Settings"],
	["quit", "Quit"]
];
var count = array_length_1d(buttons);
var button;
var i;
var margin = 40;
//Create Buttons
for (i = 0; i < count; i++) {
	var button = buttons[i];
	instance_create(viewX+(viewWidth/2), viewY+110+(margin*i), obj_menu_button);
	(instance_nearest(viewX+(viewWidth/2), viewY+110+(margin*i), obj_menu_button)).action = button[0];
	(instance_nearest(viewX+(viewWidth/2), viewY+110+(margin*i), obj_menu_button)).infoText = button[1];
}