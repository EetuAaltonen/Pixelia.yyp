/*Item {
	sprite; 0
	name; 1
	type; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
}*/

var item = argument0;
var count = argument1;
var data;
var listSize = ds_list_size(global.inventory);
var alreadyExists = false;
var i;
var controller = obj_inventory_controller;

if (listSize > 0) {
	//Check If Already Exists
	for (i = 0; i < listSize; i++) {
		data = ds_list_find_value(global.inventory, i);
		if (item[0] == data[0] && item[1] == data[1] && item[2] == data[2]
		&& item[4] == data[4] && item[6] == data[6] && item[7] == data[7]
		&& item[8] == data[8]) {
			alreadyExists = true;
			break;
		}
	}
}



if (alreadyExists) {
	count += data[3];
	if (count > 0) {
		data[3] = count;
		ds_list_replace(global.inventory, i, data);
	} else {
		ds_list_delete(global.inventory, i);
	}
} else {
	ds_list_add(global.inventory, item);
}
controller.updateValues = true;