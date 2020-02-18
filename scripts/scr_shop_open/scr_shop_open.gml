scr_inventory_reset_values();

var controller = obj_inventory_controller;
if (controller.listOfShop == "null") {
	controller.listOfShop = ds_list_create();
}