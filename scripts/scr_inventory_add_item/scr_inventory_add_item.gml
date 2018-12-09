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
var listSize = ds_list_size(global.inventory);
var alreadyExists = false;
var data;
var i, j, k = 0;

if (count != 0) {
	if (scr_inventory_check_capacity(item[5]*count,true) || count < 0) {

		//Add To Capacity
		global.totalInventoryCapacity += (count*item[5]);
		
		//Binary search
		i = 0; j = (listSize-1);
		while(i <= j) {
			k = floor((i + j)/2);
			data = ds_list_find_value(global.inventory, k);
			if (scr_item_compare_items(item, data, "full")) {
				if (count + data[3] > 0) {
					data[3] += count;
					ds_list_replace(global.inventory, k, data);
				} else {
					ds_list_delete(global.inventory, k);
				}
				alreadyExists = true;
				break;
			}
			//Compare names
			if (item[1] < data[1]) {
				j = (k - 1);
			} else if (item[1] == data[1]) {
				if (scr_item_compare_items(item, data, "smaller")) {	
					j = (k - 1);
				} else {
					i = (k + 1);
				}
			} else {
				i = (k + 1);
			}
		}
		if (!alreadyExists) {
			item[3] = count;
			ds_list_insert(global.inventory, k, item);
		}
	}
}