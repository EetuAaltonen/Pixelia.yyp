/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
}*/

var item = argument0;
var count = argument1;
var controller = obj_inventory_controller;
var listSize = ds_list_size(global.inventory);
var alreadyExists = false;
var data;
var i;

if (count != 0) {
	if (scr_inventory_check_capacity(item[5]*count) || count < 0) {

		//Add To Capacity
		global.totalInventoryCapacity += (count*item[5]);
		
		//Check If Already Exists
		for (i = 0; i < listSize; i++) {
			data = ds_list_find_value(global.inventory, i);
			if (scr_item_compare_items(item, data)) {
				if (count + data[3] > 0) {
					data[3] += count;
					ds_list_replace(global.inventory, i, data);
				} else {
					ds_list_delete(global.inventory, i);
				}
				alreadyExists = true;
				break;
			}
		}
		if (!alreadyExists) {
			item[3] = count;
			ds_list_add(global.inventory, item);
		}
	
		controller.updateValues = true;
	}
}