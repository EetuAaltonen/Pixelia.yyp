/// @description ???
/// @return ???

var buttons = [
	[MenuActions.Play, "Play"],
	[MenuActions.Achievements, "Achievements"],
	[MenuActions.Settings, "Settings"],
	[MenuActions.Quit, "Quit"]
];
var count = array_length_1d(buttons);
var buttonData, instance;
var i;
var margin = 4; // Grid col
//Create Buttons
for (i = 0; i < count; i++) {
	var buttonData = buttons[i];
	instance = instance_create(scr_pos_grid(32, Grid.Row), scr_pos_grid(26+(margin * i), Grid.Col), obj_menu_button);
	instance.action = buttonData[0];
	instance.infoText = buttonData[1];
}