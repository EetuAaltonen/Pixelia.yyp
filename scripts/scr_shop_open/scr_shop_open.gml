var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

global.hudState = "shopBuy";
updateValues = true;
pageIndex = 1;
filter = "null";

listOfshop = "null";

//Create Buttons
var buttons = [
	obj_shop_buy_button,
	obj_shop_sell_button,
	obj_shop_repair_button,
	obj_shop_buy_back_button,
	obj_inv_close_button
];
var margin = 5;
var arrayLength = array_length_1d(buttons);
for (var i = 0; i < arrayLength; i++) {
	instance_create(viewX+4+(i*(85+margin)), viewY+40, buttons[i]);
	buttons[i].depth = (depth-1);
}