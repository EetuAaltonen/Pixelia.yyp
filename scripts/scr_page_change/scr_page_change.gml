//Change page
if (global.hudState == "inventoryBackpack" || global.hudState == "inventoryEquipments" ||
	string_pos("shop", string(global.hudState))) {
	if (!instance_exists(obj_button_confirm)) {
		var itemCount = ds_list_size(listOfItems);
		if (itemCount > 0) {
		    if (keyboard_check_pressed(vk_right) and
				scr_can_change_next_page(currentPage, itemCount, itemsPerPage)) {
		        currentPage += 1;
		        updateValues = true;
		    } else if (keyboard_check_pressed(vk_left) and currentPage > 1) {
		        currentPage -= 1;
		        updateValues = true;
		    }
		}
	}
}
