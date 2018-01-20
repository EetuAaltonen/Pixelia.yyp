/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
}*/
var list = argument0;
var category = "";
if (scr_hud_state_some_of_crafting()) {
	category = global.hudState;	
} else {
	switch (global.hudState) {
		case "inventoryEquipments": {
			category = "equipment";
		}break;
		case "shopRepair": {
			category = "equipment";
		}break;
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