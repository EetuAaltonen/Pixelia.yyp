var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var controller = obj_inventory_controller;

scr_set_global_hudstate("shopBuy");

controller.updateValues = true;
controller.pageIndex = 1;
controller.filter = "null";
controller.merchant = self;

if (controller.listOfshop == "null") {
	controller.listOfshop = ds_list_create();
}
ds_list_clear(controller.listOfItems);
scr_copy_ds_list(controller.listOfshop, shop, false);