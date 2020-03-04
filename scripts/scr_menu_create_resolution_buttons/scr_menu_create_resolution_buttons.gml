var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var resolutions = scr_screen_resolutions();
var count = array_length_1d(resolutions);
var i, instance;
var margin = 26;
//Create Buttons
for (i = 0; i < count; i++) {
	instance = instance_create(viewX+(viewWidth/2), viewY+110+(margin*i), obj_menu_button);
	instance.action = MenuAction.Resolution;
	instance.resolution = resolutions[i];
}
//Create Back Button
instance = instance_create(viewX+(viewWidth/2), viewY+110+(margin*i), obj_menu_button);
instance.action = MenuAction.MainMenu;
instance.infoText = "Back";