/// @description Returns specified range of list
/// @param list - List of items
/// @param startIndex - Start index
/// @param itemsPerPage - Max items per page
/// @return List - Part of original list

var list = argument0;
var startIndex = argument1;
var itemsPerPage = argument2;
var listSize = ds_list_size(list);
var lastIndex = startIndex + itemsPerPage;

if (startIndex + itemsPerPage > listSize) {
	lastIndex = listSize;
}

var listPart = ds_list_create();
var i, item;
for (i = startIndex; i < lastIndex; i++) {
	item = ds_list_find_value(list, i);
	ds_list_add(listPart, item);
}
return listPart;