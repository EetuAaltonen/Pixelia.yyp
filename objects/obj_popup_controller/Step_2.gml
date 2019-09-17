if (global.popUp) {
	if (acceptKey != undefined) {
		if (keyboard_check_released(acceptKey)) {
			acceptKey = undefined;
			drawAcceptKey = undefined;
			cancelKey = undefined;
			drawCancelKey = undefined;
			message = undefined;
			global.popUp = false;
			script_execute(executeScript);
		}
	}
	if (cancelKey != undefined) {
		if (keyboard_check_released(cancelKey)) {
			acceptKey = undefined;
			drawAcceptKey = undefined;
			cancelKey = undefined;
			drawCancelKey = undefined;
			message = undefined;
			global.popUp = false;
		}
	}
}