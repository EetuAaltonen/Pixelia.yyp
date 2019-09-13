//scr_item_info_struct()
if (updateValues) {
	updateValues = false;
	if (data != "null") {
		infoText = scr_listed_item_get_infoText(data);
		
		equipmentIndex = undefined;
		//Check If Equipped
		if (string_pos("equipment", data[ItemData.Type])) {
			scr_listed_item_check_equipped();
		}
		
		//Check If Mouse Over
		if (distance_to_point(mouse_x, mouse_y) == 0) {
			///Set inventory info text
			obj_inventory_controller.itemInfoText = infoText;	
		}
	}
}