//scr_item_info_struct()

var list = argument0;
var filter = string_lower(argument1);
if (filter != "") {
	var tempList = ds_list_create();
	var listSize = ds_list_size(list);
	var data;
	var i;
	
	for	(i = 0; i < listSize; i++) {
		data = ds_list_find_value(list, i);
		if (string_pos(filter, string_lower(data[1]))) {
			ds_list_add(tempList, data);
		}
	}
	return tempList;
}
return list;