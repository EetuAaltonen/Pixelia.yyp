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
				if (instance_exists(obj_menu_button)) {
					var count = instance_number(obj_menu_button);
					var button;
					var i;
					for (i = 0; i < count; i++) {
						button = instance_find(obj_menu_button, i);
						if (button.action == "delete") {
							button.checkSaveName = true;
						}
					}
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
	        //obj_inventory_controller.pageUpdate = true;
	        //obj_inventory_controller.createOnce = true;
		}
    }
}

