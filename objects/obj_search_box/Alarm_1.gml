///@description Blink Icon
if (selected == true) {
	if (!keyboard_check(vk_backspace)) {
	    if (blink_icon == "") {
			blink_icon = "|";
	    } else {
	        blink_icon = "";
	    }
	}
    alarm[1] = blink_speed;
} else {
    blink_icon = "";
}

