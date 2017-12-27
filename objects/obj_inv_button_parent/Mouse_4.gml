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
		
		//Destroy Search Box
		if (instance_exists(obj_menu_text_box)) {
			with (obj_menu_text_box) instance_destroy();
		}
		
		//Destroy Listed Items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}
		
		obj_inventory_controller.updateValues = true;
	}
}