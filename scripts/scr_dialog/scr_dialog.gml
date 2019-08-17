///scr_dialog(argument0);
var dialogs = argument0;
if (global.hudState == HudStates.Null) {
    global.hudState = HudStates.Dialog;
	obj_player.actionState = HudStates.Dialog;
}

if (obj_dialog_controller) {
	var controller = obj_dialog_controller
	controller.dialogs = dialogs;
	controller.createOptions = true;
}