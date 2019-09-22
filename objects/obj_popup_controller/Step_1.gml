if (global.popUp && !is_undefined(message)) {
	if (is_undefined(keyInfo)) {
		if (!is_undefined(cancelKey)) {
			keyInfo = "Accept [ " + scr_get_key_name(acceptKey) + " ]    " +
						"Cancle [ " + scr_get_key_name(cancelKey) + " ]";
		} else {
			keyInfo = "OK [ " + scr_get_key_name(acceptKey) + " ]";
		}
	}
	
	if (acceptKey != undefined) {
		if (keyboard_check_released(acceptKey)) {
			acceptKey = undefined;
			cancelKey = undefined;
			message = undefined;
			keyInfo = undefined;
			global.popUp = false;
			script_execute(executeScript);
		}
	}
	
	if (cancelKey != undefined) {
		if (keyboard_check_released(cancelKey)) {
			acceptKey = undefined;
			cancelKey = undefined;
			message = undefined;
			keyInfo = undefined;
			global.popUp = false;
		}
	}
}