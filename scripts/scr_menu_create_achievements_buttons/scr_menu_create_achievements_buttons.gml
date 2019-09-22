var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);

var buttons = [
	[MenuActions.MainMenu, "Back"]
];
var count = array_length_1d(buttons);
var button;
var i, intance;
var margin = 26;
//Create Buttons
for (i = 0; i < count; i++) {
	var button = buttons[i];
	intance = instance_create(viewX+(viewWidth/2), viewY+110+(margin*i), obj_menu_button);
	intance.action = button[0];
	intance.infoText = button[1];
}