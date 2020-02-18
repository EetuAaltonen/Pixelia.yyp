if (selected) {
    if (!keyboard_check_pressed(vk_enter)) {
        if (!keyboard_check_pressed(vk_backspace)) {
            if (string_length(keyboard_string) <= max_width) {
                if (keyboard_check_pressed(vk_space)) {
                    if (room == Menu) {
						txt += "_";
					} else {
						txt += " ";
					}
                }
                if (string_count(chr(keyboard_key), enabled_keys)) {
                    txt = keyboard_string;
                } else {
                    keyboard_string = txt;
                }
				scr_menu_active_delete_button_check();
            } else {
                keyboard_string = txt;
            }
        } else {
			
			blink_icon = "";
			alarm[1] = blink_speed;
			
            txt = keyboard_string;
			erase_delay = erase_orig_delay;
			alarm[2] = erase_delay;
        }
    } else {
		if (room != Menu) {
			var controller = obj_inventory_controller;
	        keyboard_string = "";
	        blink_icon = "";
	        selected = false;
			if (txt != controller.filter) {
		        if (txt != "") {
		            controller.filter = txt;
		        } else {
					txt = place_holder;
		            controller.filter = "";
		        }
				controller.pageIndex = 1;
				controller.updateValues = true;
			}
		} else {
			keyboard_string = "";
			blink_icon = "";
			selected = false;
		}
    }
} else if (keyboard_check_pressed(vk_enter)) {
	if (!global.popUp && room != Menu) {
		if (txt == place_holder) {
		    keyboard_string = "";
		} else {
		    keyboard_string = txt;
		}
		selected = true;
		alarm[1] = 1;
	}
}