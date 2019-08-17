//scr_item_info_struct()

var list = argument0;
var category = "";
if (global.hudState == HudStates.Crafting) {
	category = global.hudState;	
} else {
	if (global.hudAction == HudActions.Equipment ||
		global.hudAction == HudActions.Repair) {
		category = "equipment";
	}
}
if (category != "") {
	var tempList = ds_list_create();
	var listSize = ds_list_size(list);
	var data;
	var i;
	for	(i = 0; i < listSize; i++) {
		data = ds_list_find_value(list, i);
		if (string_pos(category, data[2]) != 0) {
			ds_list_add(tempList, data);
		}
	}
	return tempList;
}
return list;