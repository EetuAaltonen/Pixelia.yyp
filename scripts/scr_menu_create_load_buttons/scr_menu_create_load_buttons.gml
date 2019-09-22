var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var buttons = [
	[MenuActions.Load, "Load"],
	[MenuActions.Delete, "Delete"],
	[MenuActions.MainMenu, "Back"]
];
var count = array_length_1d(buttons);
var button;
var i;
var margin = 40;
// Create Buttons
for (i = 0; i < count; i++) {
	var button = buttons[i];
	var instance = instance_create(viewX+110, viewY+150+(margin*i), obj_menu_button);
	instance.action = button[0];
	instance.infoText = button[1];
	if (button[0] == MenuActions.Load) {
		instance.tempInfoText = button[1];
	}
}
// Text Box
instance_create(viewX+39, viewY+110, obj_search_box);
// SearchSaves
searchSaves = true; 