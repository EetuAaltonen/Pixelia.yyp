//Initialize shop
if (is_undefined(shop)) {
	scr_merchant_initialize_shop();
}

// Start dialog / Open Shop
if (scr_interact_with_player()) {
	scr_set_global_hud_state(HudStates.Shop);
	scr_set_global_hud_action(HudActions.Buy);

	scr_shop_create_buttons();
	
	scr_shop_open();
	obj_inventory_controller.merchant = self;
	scr_ds_list_copy(obj_inventory_controller.listOfShop, shop, false);
	
} else if (global.hudState == HudStates.Shop && scr_keys_to_close()) {
	scr_shop_close();
}