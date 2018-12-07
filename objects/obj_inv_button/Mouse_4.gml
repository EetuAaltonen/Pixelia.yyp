if (hudState != "null") {
	if (global.hudState != hudState) {
		switch (hudState) {
			case "abilities": {
				scr_set_global_hudstate(hudState);
				scr_hud_search_box_remove();
			}break;
			case "skills": {
				scr_set_global_hudstate(hudState);
				scr_hud_search_box_remove();
			}break;
			case "stats": {
				scr_set_global_hudstate(hudState);
				//Remove Search Box
				scr_hud_search_box_remove();
				//Remove Listed Items
				scr_listed_item_remove();
				show_message(instance_exists(obj_listed_item));
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
			case "shopBuy": {
				scr_set_global_hudstate(hudState);
				scr_shop_open();
				scr_ds_list_copy(obj_inventory_controller.listOfShop, obj_inventory_controller.merchant.shop, false);
			}break;
			case "shopSell": {
				scr_set_global_hudstate(hudState);
				scr_shop_open();
			}break;
			default /*inventoryBackpack || inventoryBackpack*/: {	
				scr_set_global_hudstate(hudState);
				obj_inventory_controller.updateValues = true;
				obj_inventory_controller.pageIndex = 1;
				obj_inventory_controller.filter = "";
			}break;
		}
	}
}