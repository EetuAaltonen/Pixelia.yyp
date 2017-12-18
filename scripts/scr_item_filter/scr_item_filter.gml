var list = argument0;
var filter = string_lower(argument1);
var tempList = ds_list_create();
var listSize = ds_list_size(list);
var data;
var i;
if (filter != "") {
	for	(i = 0; i < listSize; i++) {
		data = ds_list_find_value(list, i);
		if (string_pos(filter, string_lower(data[1])) != 0) {
			ds_list_add(tempList, data);
		}
	}
	list = tempList;
}
return list;