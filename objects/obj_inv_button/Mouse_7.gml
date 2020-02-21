if (hudAction != HudActions.Null) {
	if (global.hudAction != hudAction) {
		switch (hudAction) {
			case HudActions.Abilities: {
				scr_set_global_hud_action(hudAction);
				//Remove Search Box
				scr_hud_search_box_remove();
				//Remove Listed Items
				scr_listed_item_remove();
			}break;
			case HudActions.Skills: {
				scr_set_global_hud_action(hudAction);
				//Remove Search Box
				scr_hud_search_box_remove();
				//Remove Listed Items
				scr_listed_item_remove();
			}break;
			case HudActions.Stats: {
				scr_set_global_hud_action(hudAction);
				//Remove Search Box
				scr_hud_search_box_remove();
				//Remove Listed Items
				scr_listed_item_remove();
			}break;
			case HudActions.SaveExit: {
				scr_save_and_exit();
			}break;
			case HudActions.Close: {
				if (global.hudState == HudStates.Inventory) {
					scr_inventory_close();
				}
				if (global.hudState == HudStates.Shop) {
					scr_shop_close();
				}
			}break;
			case HudActions.Buy: {
				scr_set_global_hud_action(hudAction);
				scr_shop_open();
				scr_ds_list_copy(obj_inventory_controller.listOfShop, obj_inventory_controller.merchant.shop, false);
			}break;
			case HudActions.Sell: {
				scr_set_global_hud_action(hudAction);
				scr_shop_open();
			}break;
			default /*inventoryBackpack || inventoryBackpack*/: {	
				scr_set_global_hud_action(hudAction);
				scr_inventory_reset_values();
			}break;
		}
	}
}