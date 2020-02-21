//Change page
if (scr_page_change_allowed() && !updateValues) {
	if (maxPageIndex > 1) {
		if (keyboard_check_released(ord("A"))) {
			if (pageIndex > 1) {
				pageIndex -= 1;
			} else {
				pageIndex = maxPageIndex;
			}
			updateValues = true;
		} else if (keyboard_check_released(ord("D"))) {
		    if (pageIndex < maxPageIndex) {
				pageIndex += 1;
			} else {
				pageIndex = 1;	
			}
		    updateValues = true; 
		}
	}
}
