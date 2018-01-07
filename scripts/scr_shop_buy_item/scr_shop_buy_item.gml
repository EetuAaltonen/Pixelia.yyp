if (global.coins >= data[6]) {
	//Check Weight
	if (scr_check_inventory_capacity(data[5])) {
        //Add To Inventory
		scr_inventory_add_item(data, 1);
		//Toast
        //scr_add_new_toast(data[1] + " purchased");
		//Remove From Shop
		scr_add_to_shop(data, -1);
		//Pay
		global.coins -= data[6];
    } else {
		//scr_add_new_toast("Inventory is full!");
    }
} else {
	//scr_add_new_toast("Not enough money!");
}