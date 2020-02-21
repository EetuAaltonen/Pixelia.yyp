var controller = obj_inventory_controller;
if (self == obj_inventory_controller) {
	controller = self;
}
controller.updateValues = true;
controller.pageIndex = 1;
controller.filter = "";
scr_inventory_clear_search_box();