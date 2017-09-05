if (global.popUp) {
	if (keyboard_check_released(acceptKey)) {
		acceptKey = "null";
		drawAcceptKey = "null";
		cancelKey = "null";
		drawCancelKey = "null";
		message = "";
		global.popUp = false;
		script_execute(executeScript);
	} else if (keyboard_check_released(cancelKey)) {
		acceptKey = "null";
		drawAcceptKey = "null";
		cancelKey = "null";
		drawCancelKey = "null";
		message = "";
		global.popUp = false;
	}
}