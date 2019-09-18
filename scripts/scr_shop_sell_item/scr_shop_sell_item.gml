var merchant = obj_inventory_controller.merchant;
if (merchant.money >= data[ItemData.Price]) {
	var controller = obj_inventory_controller;
	var merchant = controller.merchant;
	
	//Check if count <= 0
	if ((data[ItemData.Count]-1) <= 0) {
		//Unequip if equipped
		scr_listed_item_unequip();	
	}
	//Remove From Inventory
	scr_inventory_add_item(data, -1);
	//Pay
	scr_add_coin(data[ItemData.Price]);
	merchant.money -= data[ItemData.Price];
	//Add To Shop
	scr_ds_list_add_item(data, 1, controller.listOfShop);
	scr_ds_list_copy(merchant.shop, controller.listOfShop, false);
	controller.updateValues = true;
	//Toast
    scr_add_new_toast(data[ItemData.Name] + " sold");
} else {
	scr_add_new_toast("Merchant is out of money.")	
}