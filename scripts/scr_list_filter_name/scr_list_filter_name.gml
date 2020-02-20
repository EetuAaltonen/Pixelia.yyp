/// @desc Filter items by name
/// @param itemList - List of items
/// @param filter - Filter string
/// @return List - Filtered list

var itemList = argument0;
var filter = argument1;
filter = string_lower(filter);

var filteredList = ds_list_create();
if (filter == "") {
	scr_ds_list_copy(filteredList, itemList, false);
} else {
	var listSize = ds_list_size(itemList);
	var i, data;
	for	(i = 0; i < listSize; i++) {
		data = ds_list_find_value(itemList, i);
		if (string_pos(filter, string_lower(data[ItemData.Name]))) {
			ds_list_add(filteredList, data);
		}
	}
}
return filteredList;