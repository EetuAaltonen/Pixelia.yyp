var list = argument0;
var value = argument1; //Value To Search
var key = argument2; //Index Of Object Data

var listSize = ds_list_size(list);
var i;
var data;

for (i = 0; i < listSize; i++) {
	data = ds_list_find_value(list, i);
	if (data[key] == value) {
		return data;	
	}
}
return "";