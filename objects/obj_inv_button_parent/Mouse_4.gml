///Change hudState
if (hudState == "null") {
	if (string_pos("inventory", string(global.hudState))) {
		scr_inventory_close();
	} else if (string_pos("shop", string(global.hudState))) {
		scr_shop_close();
	}
} else {
	if (global.hudState != hudState) {
	    global.hudState = hudState;
		
		//Remove Search Box
		scr_hud_search_box_remove();
		
		//Remove Listed Items
		scr_listed_item_remove();
		
		obj_inventory_controller.updateValues = true;
	}
}