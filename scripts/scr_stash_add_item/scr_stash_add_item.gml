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
	requiredLevel; 9
}*/

var item = argument0;
var count = argument1;
var listSize = ds_list_size(global.stash);
var alreadyExists = false;
var data;
var i;

if (count != 0) {
	if (scr_stash_check_capacity(item[5]*count) && scr_inventory_check_capacity(item[5]*(count*-1),true)) {
				
		//Add To Capacity
		global.totalStashCapacity += (count*item[5]);
	
		//Check If Already Exists
		for (i = 0; i < listSize; i++) {
			data = ds_list_find_value(global.stash, i);
			if (scr_item_compare_items(item, data, "full")) {
				if (count + data[3] > 0) {
					data[3] += count;
					ds_list_replace(global.stash, i, data);
				} else {
					ds_list_delete(global.stash, i);
				}
				alreadyExists = true;
				break;
			}
		}
		if (!alreadyExists) {
			item[3] = count;
			ds_list_add(global.stash, item);
		}
		
		//Remove From Inventory
		scr_inventory_add_item(item, count*(-1));
		//Contains: "obj_inventory_controller.updateValues = true;" already.
		obj_inventory_controller.updateValues = true;
	}
}