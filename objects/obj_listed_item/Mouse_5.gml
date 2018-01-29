if (!obj_inventory_controller.updateValues) {
	switch (global.hudState) {
		case "inventoryBackpack": {
			scr_inventory_drop_item(data, -1);
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
	}
}