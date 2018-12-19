//scr_item_info_struct()

//Binary search
var item = argument0;
var isArray = is_array(item);
var data;
var inventory = global.inventory; //global.equippedItems
var listSize = ds_list_size(inventory);
var i, j, k;

i = 0; j = (listSize-1);
while(i <= j) {
	k = floor((i + j)/2);
	data = ds_list_find_value(inventory, k);
	if (isArray) {
		if (scr_item_compare_items(item, data, "full")) {
			return data;
		}
		if (item[1] < data[1]) {
			j = (k - 1);
		} else {
			i = (k + 1);
		}
	} else {
		if (item == data[1]) {
			return data;
		}
		if (item < data[1]) {
			j = (k - 1);
		} else {
			i = (k + 1);
		}
	}
}
return "";