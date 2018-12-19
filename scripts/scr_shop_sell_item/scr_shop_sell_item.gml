var merchant = obj_inventory_controller.merchant;
if (merchant.money >= data[6]) {
	var controller = obj_inventory_controller;
	var merchant = controller.merchant;
	
	//Remove From Inventory
	scr_inventory_add_item(data, -1);
	//Pay
	scr_add_coin(data[6]);
	merchant.money -= data[6];
	//Add To Shop
	scr_ds_list_add_item(data, 1, controller.listOfShop);
	scr_ds_list_copy(merchant.shop, controller.listOfShop, false);
	controller.updateValues = true;
	//Toast
    scr_add_new_toast(data[1] + " sold");
} else {
	scr_add_new_toast("Merchant is out of money.")	
}