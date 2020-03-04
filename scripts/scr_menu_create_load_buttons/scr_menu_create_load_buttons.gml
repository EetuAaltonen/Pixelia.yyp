var buttons = [
	[MenuAction.Load, "Load"],
	[MenuAction.Delete, "Delete"],
	[MenuAction.MainMenu, "Back"]
];
var count = array_length_1d(buttons);
var i, buttonData, instance;
var margin = 10;
// Create Buttons
for (i = 0; i < count; i++) {
	buttonData = buttons[i];
	instance = instance_create(
		scr_pos_grid(30, Grid.Row),
		scr_pos_grid(40 + (margin * i), Grid.Col),
		obj_menu_button
	);
	instance.action = buttonData[MenuButton.Action];
	instance.infoText = buttonData[MenuButton.Text];
	if (buttonData[MenuButton.Action] == MenuAction.Load) {
		instance.tempInfoText = buttonData[MenuButton.Text];
	}
}
// Text Box
instance_create (
	scr_pos_grid(30, Grid.Row) - (142 / 2),
	scr_pos_grid(30, Grid.Col),
	obj_search_box
); 