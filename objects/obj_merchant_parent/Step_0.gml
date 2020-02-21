// Start dialog / Open Shop
if (scr_interact_with_player()) {
	scr_set_global_hud_state(HudStates.Shop);
	scr_set_global_hud_action(HudActions.Buy);

	scr_shop_create_buttons();	
	scr_shop_open();
	obj_inventory_controller.merchant = self;
	scr_ds_list_copy(obj_inventory_controller.listOfShop, shop, false);
	
} else if (scr_keys_to_close(HudStates.Shop)) {
	scr_shop_close();
}