///Left mouse pressed
if (!obj_inventory_controller.updateValues) {
	if (scr_hud_state_some_of_crafting()) {
		scr_listed_item_left_mouse_pressed_crafting();
	} else {
		switch (global.hudState) {
			case "inventoryBackpack": {
				scr_listed_item_toggle_equip();
				scr_inventory_use_item(data, 1);
			}break;
			case "inventoryEquipments": {
				scr_listed_item_toggle_equip();
			}break;
			case "shopBuy": {
				scr_shop_buy_item();
			}break;
			case "shopSell": {
				scr_shop_sell_item();
			}break;
			case "shopRepair": {
				//scr_shop_repair_item();
			}break;
			case "shopBuyBack": {
				//scr_shop_buy_back_item();
			}break;
			case "stashWithdraw": {
				scr_stash_add_item(data, -1);
			}break;
			case "stashDeposit": {
				scr_stash_add_item(data, 1);
			}break;
			case "looting": {
				scr_listed_item_looting();
			}break;
		}
	}
}