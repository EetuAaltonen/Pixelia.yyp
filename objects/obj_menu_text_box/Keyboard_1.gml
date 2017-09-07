if (selected == true) {
    if (!keyboard_check_pressed(vk_enter)) {
        if (!keyboard_check_pressed(vk_backspace)) {
            if (string_length(keyboard_string) <= max_width) {
                if (keyboard_check_pressed(vk_space)) {
                    txt += "_";
                }
                if (string_count(chr(keyboard_key), enabled_keys)) {
                    txt = keyboard_string;
                } else {
                    keyboard_string = txt;
                }
            } else {
                keyboard_string = txt;
            }
        } else {
            txt = keyboard_string;
        }
    } else {
		if (room != Menu) {
	        keyboard_string = "";
	        blink_icon = "";
	        selected = false;
	        if (global.hudState == "inventory1") {
	            if (txt == "") {
	                txt = place_holder;
	            }
	            if (txt != place_holder) {
	                obj_inventory_controller.filter = txt;
	            } else {
	                obj_inventory_controller.filter = "null";
	            }
	            obj_inventory_controller.pageUpdate = true;
	            obj_inventory_controller.createOnce = true;
	        }
		}
    }
}

