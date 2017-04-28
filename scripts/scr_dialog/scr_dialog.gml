///scr_dialog(argument0);
var dialogs = argument0;
if (global.hudState == "null") {
    global.hudState = "dialog";
}

if (obj_dialog_controller) {
	var controller = obj_dialog_controller
	controller.dialogs = dialogs;
	controller.createOptions = true;
}