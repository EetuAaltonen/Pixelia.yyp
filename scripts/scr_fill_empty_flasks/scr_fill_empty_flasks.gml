//Remove empty flask, add filled flask
//ADD CHECK IF INVENTORY FULL!!!
//ADD CHECK IF THERE IS EMPTY FLASK IN INVENTORY!!!
var itemWeight = scr_inventory_item_weight("spr_water_flask");
if (scr_inventory_check_capacity(itemWeight,false)) {
	var flaskFound = scr_inventory_check_item_index("spr_empty_flask");
	if (flaskFound != "null") {
		scr_save_to_inventory("spr_empty_flask", -1);
		scr_save_to_inventory("spr_water_flask", 1);
		scr_add_new_toast("Empty flask filled");
	} else {
	scr_add_new_toast("No empty flasks!");
}
} else {
	scr_add_new_toast("Inventory is full!");
}