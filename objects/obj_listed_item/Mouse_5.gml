//scr_listed_item_right_mouse_pressed();
switch (global.hudState) {
	case "shopBuy": {
		scr_shop_buy_item();
	} break;
	case "shopSell": {
		scr_shop_sell_item();
	} break;
	case "shopRepair": {
		//scr_shop_repair_item();
	} break;
	case "shopBuyBack": {
		////scr_shop_buy_back_item();
	} break;
}