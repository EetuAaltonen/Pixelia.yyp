//Start dialog / Open Shop
if (scr_interact_with_player()) {
	scr_set_global_hudstate("shopBuy");
	scr_shop_create_buttons();
	
	scr_shop_open();
	obj_inventory_controller.merchant = self;
	scr_ds_list_copy(obj_inventory_controller.listOfShop, shop, false);
	
} else if (string_pos("shop", string(global.hudState)) &&
			scr_keys_to_close()) {
	scr_shop_close();
}