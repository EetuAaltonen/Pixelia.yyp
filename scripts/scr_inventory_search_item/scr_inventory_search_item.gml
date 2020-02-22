//scr_item_info_struct()

// Binary search
var item = argument0;
var isArray = is_array(item); // Can be ItemData or Name
var equalData = undefined;
var inventory = global.inventory;
var listSize = ds_list_size(inventory);
var i, j, k, data;

i = 0; j = (listSize-1);
while(i <= j) {
	k = floor((i + j)/2);
	data = ds_list_find_value(inventory, k);
	if (isArray) {
		if (scr_item_compare_items(item, data, "full")) {
			equalData = data;
		}
		if (item[ItemData.Name] < data[ItemData.Name]) {
			j = (k - 1);
		} else {
			i = (k + 1);
		}
	} else {
		if (item == data[ItemData.Name]) {
			equalData = data;
		}
		if (item < data[ItemData.Name]) {
			j = (k - 1);
		} else {
			i = (k + 1);
		}
	}
}
return equalData;