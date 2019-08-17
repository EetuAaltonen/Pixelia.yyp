var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var controller = obj_inventory_controller;

scr_set_global_hud_state(HudStates.Stash);
scr_set_global_hud_action(HudActions.Withdraw);


controller.updateValues = true;
controller.pageIndex = 1;
controller.filter = "";

//Create Buttons
var buttonActions = [
	[HudActions.Withdraw],
	[HudActions.Deposit, HudActions.Deposit],
	[HudActions.Close]
];
var margin = 5;
var arrayLength = array_length_1d(buttons);
for (var i = 0; i < arrayLength; i++) {
	var button = buttons[i];
	instance_create(viewX+4+(i*(85+margin)), viewY+40, obj_hud_button);
	(instance_nearest(viewX+4+(i*(85+margin)), viewY+40, obj_hud_button)).depth = controller.depth-1;
	(instance_nearest(viewX+4+(i*(85+margin)), viewY+40, obj_hud_button)).hudState = button[0];
	(instance_nearest(viewX+4+(i*(85+margin)), viewY+40, obj_hud_button)).infoText = button[1];
}