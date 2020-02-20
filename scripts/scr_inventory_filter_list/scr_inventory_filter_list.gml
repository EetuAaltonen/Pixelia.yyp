/// @description Filter list of items
/// @param itemList - List of items
/// @param filterString - String for filtering items by name
/// @return List - Filtered item list

var itemList = argument0;
var filterString = argument1;
return scr_list_filter_name(scr_list_filter_category(itemList), filterString);