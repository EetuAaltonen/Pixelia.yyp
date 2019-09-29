if (updateValues) {
	updateValues = false;
	var tempItem = global.equipment[equipmentIndex];
	if (tempItem != "") {
		infoText = scr_listed_item_get_infoText(tempItem);
		itemImage = tempItem[0];
		
		// Check If Mouse Over
		if (distance_to_point(mouse_x, mouse_y) == 0) {
			// Set inventory info text
			obj_inventory_controller.itemInfoText = infoText;	
		}
	} else {
		itemImage = "null";
		infoText = "";
	}
}