var list = argument0;
var key = argument1; //Index Of Object Data
var ascend = argument2; //Whether the values should be ascending (true) or descending (false) order.

var keys = ds_list_create();
var sortedList = ds_list_create();

var listSize = ds_list_size(list);
var i;
var data;
var value;
for (i = 0; i < listSize; i++) {
	data = ds_list_find_value(list, i);
	ds_list_add(keys, data[key]);
}

if (ascend) {
	ds_list_sort(keys, true);
} else {
	ds_list_sort(keys, false);
}

for (i = 0; i < listSize; i++) {
	value = ds_list_find_value(keys, i);
	data = scr_ds_list_find_data_by_value(list, value, key);
	if (data != "") {
		ds_list_add(sortedList, data);
	}
}

scr_ds_list_copy(list, sortedList, false);

ds_list_destroy(keys);
ds_list_destroy(sortedList);