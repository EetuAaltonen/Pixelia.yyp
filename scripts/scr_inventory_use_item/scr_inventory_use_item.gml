//scr_item_info_struct()

var item = argument0;
var count = argument1;

if (count != 0) {
	if (string_pos("potion", item[2])) {
		//Add buff
		scr_plr_effects_add(item[7], item[8], item[9]);
	} else {
		return;
	}
	//Remove From Inventory
	scr_inventory_add_item(item, count*(-1));

	obj_inventory_controller.updateValues = true;
}