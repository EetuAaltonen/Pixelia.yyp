///Change hudState
if (hudState == "null") {
	if (global.hudState == HudStates.Inventory) {
		scr_inventory_close();
	} else if (global.hudState == HudStates.Shop) {
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