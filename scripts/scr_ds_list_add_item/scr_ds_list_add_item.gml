//scr_item_info_struct()
var item = argument0;
var count = argument1;
var list = argument2;

if (count != 0) {
	var listSize = ds_list_size(list);
	var alreadyExists = false;
	var data;
	var i, j, k = 0;

	//Binary search
	i = 0; j = (listSize-1);
	while(i <= j) {
		k = floor((i + j)/2);
		data = ds_list_find_value(list, k);
		if (scr_item_compare_items(item, data, "full")) {
			if (count + data[3] > 0) {
				data[3] += count;
				ds_list_replace(list, k, data);
			} else {
				ds_list_delete(list, k);
			}
			alreadyExists = true;
			break;
		}
		//Compare names
		if (item[1] < data[1]) {
			j = (k - 1);
		} else if (item[1] == data[1]) {
			if (scr_item_compare_items(item, data, "small")) {	
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
		if (i > j) {
			k = i;	
		}
		ds_list_insert(list, k, item);
	}
}