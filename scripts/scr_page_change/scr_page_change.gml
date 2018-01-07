//Change page
if (scr_page_change_allowed()) {
	if (!instance_exists(obj_button_confirm)) {
		var itemCount = ds_list_size(listOfItems);
		if (itemCount > 0) {
		    if (keyboard_check_pressed(vk_right) and
				scr_can_change_next_page(pageIndex, itemCount, itemsPerPage)) {
		        pageIndex += 1;
		        updateValues = true;
		    } else if (keyboard_check_pressed(vk_left) and pageIndex > 1) {
		        pageIndex -= 1;
		        updateValues = true;
		    }
		}
	}
}
