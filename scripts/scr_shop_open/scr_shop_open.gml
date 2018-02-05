var controller = obj_inventory_controller;

scr_set_global_hudstate("shopBuy");

controller.updateValues = true;
controller.pageIndex = 1;
controller.filter = "null";
controller.merchant = self;

if (controller.listOfShop == "null") {
	controller.listOfShop = ds_list_create();
}
scr_copy_ds_list(controller.listOfShop, shop, false);

//Create Buttons
var buttons = [
	["shopBuy", "Buy", "small"],
	["shopSell", "Sell", "small"],
	["shopRepair", "Repair", "small"],
	["shopBuyBack", "Buy Back", "medium"],
	["close", "Close", "small"],
];
scr_inventory_create_buttons(buttons, 4, 40);