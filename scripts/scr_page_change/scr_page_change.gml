//Change page
if (global.hudState == "inventory1" || global.hudState == "inventoryEquipments") {
	if (!instance_exists(obj_button_confirm)) {
	    if (keyboard_check_pressed(vk_right) and
			scr_can_change_next_page(current_page, item_count, itemsPerPage)) {
	        current_page += 1;
	        pageUpdate = true;
	        createOnce = true;
	        loop_stop = false;
	    } else if (keyboard_check_pressed(vk_left) and current_page > 0) {
	        current_page -= 1;
	        pageUpdate = true;
	        createOnce = true;
	        loop_stop = false;
	    }
	}
}
