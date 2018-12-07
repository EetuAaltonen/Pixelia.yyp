var controller = obj_inventory_controller;

controller.updateValues = true;
controller.pageIndex = 1;
controller.filter = "";

if (controller.listOfShop == "null") {
	controller.listOfShop = ds_list_create();
}
