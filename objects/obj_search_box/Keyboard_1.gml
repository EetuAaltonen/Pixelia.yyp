if (selected == true) {
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
	        keyboard_string = "";
	        blink_icon = "";
	        selected = false;
			if (txt != obj_inventory_controller.filter) {
		        if (txt != "") {
		            obj_inventory_controller.filter = txt;
		        } else {
					txt = place_holder;
		            obj_inventory_controller.filter = "";
		        }
				obj_inventory_controller.pageIndex = 1;
				obj_inventory_controller.updateValues = true;
			}
		} else {
			keyboard_string = "";
			blink_icon = "";
			selected = false;
		}
    }
}
