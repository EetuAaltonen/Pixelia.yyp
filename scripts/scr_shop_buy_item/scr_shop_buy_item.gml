//scr_item_info_struct()

if (global.coins >= data[ItemData.Price]) {
	//Check Weight
	if (scr_inventory_check_capacity(data[ItemData.Weight], true)) {
		var controller = obj_inventory_controller;
		var merchant = controller.merchant;
        //Add To Inventory
		scr_inventory_add_item(data, 1);
		//Remove From Shop
		scr_ds_list_add_item(data, -1, controller.listOfShop);
		scr_ds_list_copy(merchant.shop, controller.listOfShop, false);
		controller.updateValues = true;
		//Pay
		global.coins -= data[ItemData.Price];
		merchant.money += data[ItemData.Price];
		//Toast
        scr_add_new_toast(data[ItemData.Name] + " purchased");
    }
} else {
	scr_add_new_toast("Not enough money!");
}