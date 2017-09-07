if (global.popUp) {
	if (keyboard_check_pressed(acceptKey)) {
		acceptKey = "null";
		drawAcceptKey = "null";
		cancelKey = "null";
		drawCancelKey = "null";
		message = "";
		global.popUp = false;
		script_execute(executeScript);
	} else if (keyboard_check_pressed(cancelKey)) {
		acceptKey = "null";
		drawAcceptKey = "null";
		cancelKey = "null";
		drawCancelKey = "null";
		message = "";
		global.popUp = false;
	}
}