var roomWidth = room_width;

var buttons = [
	[MenuActions.Play, "Play"],
	[MenuActions.Achievements, "Achievements"],
	[MenuActions.Settings, "Settings"],
	[MenuActions.Quit, "Quit"]
];
var count = array_length_1d(buttons);
var buttonData, instance;
var i;
var margin = 40;
//Create Buttons
for (i = 0; i < count; i++) {
	var buttonData = buttons[i];
	instance = instance_create((roomWidth / 2), 125 + (margin * i), obj_menu_button);
	instance.action = buttonData[0];
	instance.infoText = buttonData[1];
}