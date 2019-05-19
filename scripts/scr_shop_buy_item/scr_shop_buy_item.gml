//scr_item_info_struct()

if (global.coins >= data[12]) {
	//Check Weight
	if (scr_inventory_check_capacity(data[11],true)) {
		var controller = obj_inventory_controller;
		var merchant = controller.merchant;
        //Add To Inventory
		scr_inventory_add_item(data, 1);
		//Remove From Shop
		scr_ds_list_add_item(data, -1, controller.listOfShop);
		scr_ds_list_copy(merchant.shop, controller.listOfShop, false);
		controller.updateValues = true;
		//Pay
		global.coins -= data[12];
		merchant.money += data[12];
		//Toast
        scr_add_new_toast(data[1] + " purchased");
    }
} else {
	scr_add_new_toast("Not enough money!");
}