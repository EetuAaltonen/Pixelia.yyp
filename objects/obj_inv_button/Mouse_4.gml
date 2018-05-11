if (hudState != "null") {
	switch (hudState) {
		case "abilities": {
			if (global.hudState != hudState) {
				global.hudState = hudState;
				scr_hud_remove_search_box();
			}
		}break;
		case "skills": {
			if (global.hudState != hudState) {
				global.hudState = hudState;
				scr_hud_remove_search_box();
			}
		}break;
		case "stats": {
			if (global.hudState != hudState) {
				global.hudState = hudState;
				scr_hud_remove_search_box();
			}
		}break;
		case "save&exit": {
			scr_save_and_exit();
		}break;
		case "close": {
			if (string_pos("inventory", string(global.hudState))) {
				scr_inventory_close();
			} else if (string_pos("shop", string(global.hudState))) {
				scr_shop_close();
			}
		}break;
		default: {
			///Change hudState
			if (global.hudState != hudState) {
				global.hudState = hudState;
		
				//Destroy Search Box
				/*if (instance_exists(obj_search_box)) {
					with (obj_search_box) instance_destroy();
				}*/
		
				//Destroy Listed Items
				if (instance_exists(obj_listed_item)) {
					with (obj_listed_item) instance_destroy();
				}
				obj_inventory_controller.updateValues = true;
			}
		}break;
	}
}