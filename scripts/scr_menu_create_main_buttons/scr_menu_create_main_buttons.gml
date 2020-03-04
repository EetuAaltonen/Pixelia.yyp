/// @description ???
/// @return ???

var buttons = [
	[MenuAction.Play, "Play"],
	[MenuAction.Achievements, "Achievements"],
	[MenuAction.Settings, "Settings"],
	[MenuAction.Quit, "Quit"]
];
var count = array_length_1d(buttons);
var i, buttonData, instance;
var margin = 10; // Grid col
//Create Buttons
for (i = 0; i < count; i++) {
	buttonData = buttons[i];
	instance = instance_create(
		scr_pos_grid(50, Grid.Row),
		scr_pos_grid(40 + (margin * i), Grid.Col),
		obj_menu_button
	);
	instance.action = buttonData[MenuButton.Action];
	instance.infoText = buttonData[MenuButton.Text];
}