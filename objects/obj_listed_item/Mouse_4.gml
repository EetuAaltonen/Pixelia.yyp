///Left mouse pressed
if (!updateValues) {
	if (global.hudState == HudStates.Crafting) {
		scr_listed_item_left_mouse_pressed_crafting();
	} else if (global.hudState == HudStates.Loot) {
		scr_listed_item_looting();
	} else {
		switch (global.hudAction) {
			case HudActions.Backpack: {
				scr_listed_item_toggle_equip();
				scr_inventory_use_item(data, 1);
			}break;
			case HudActions.Equipment: {
				scr_listed_item_toggle_equip();
			}break;
			case HudActions.Buy: {
				scr_shop_buy_item();
			}break;
			case HudActions.Sell: {
				scr_shop_sell_item();
			}break;
			case HudActions.Repair: {
				//scr_shop_repair_item();
			}break;
			case HudActions.BuyBack: {
				//scr_shop_buy_back_item();
			}break;
			case HudActions.Withdraw: {
				scr_stash_add_item(data, -1);
			}break;
			case HudActions.Deposit: {
				scr_stash_add_item(data, 1);
			}break;
		}
	}
}