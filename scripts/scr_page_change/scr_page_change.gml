//Change page
if (scr_page_change_allowed() && !updateValues) {
	if (!instance_exists(obj_button_confirm)) {
		var itemCount = ds_list_size(listOfItems);
		if (itemCount > 0) {
		    if (keyboard_check_pressed(ord("A"))) {
				if (pageIndex > 1) {
					pageIndex -= 1;
				} else {
					pageIndex = maxPageIndex;
				}
				updateValues = true;
		    } else if (keyboard_check_pressed(ord("D")) && pageIndex < maxPageIndex) {
		        pageIndex += 1;
		        updateValues = true; 
		    }
		}
	}
}
