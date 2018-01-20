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

var lists = [
	global.inventory,
	global.stash
];
var listsCount = array_length_1d(lists);
var list = ds_list_create();
var listSize;
var items = scr_items_data();
var itemsCount = array_length_1d(items);
var data, item;
var i, j, k;

for (i = 0; i < listsCount; i++) {
	listSize = ds_list_size(lists[i]);
	for (j = 0; j < listSize; j++) {
		data = ds_list_find_value(lists[i], j);
		for (k = 0; k < itemsCount; k++) {
			item = items[k];
			if (array_length_1d(data) == array_length_1d(item)) {
				if (data[1] == item[1]) {
					data[0] = item[0];
					data[2] = item[2];
					data[5] = item[5];
					data[6] = item[6];
					data[7] = item[7];
					data[8] = item[8];
					ds_list_add(list, data);
					break;
				}
			}
		}
	}
	scr_copy_ds_list(lists[i], list, true);
}

var itemExists;
listSize = array_length_1d(global.equipments);
for (i = 0; i < listSize; i++) {
	data = global.equipments[i];
	if (data != "") {
		itemExists = false;
		for (j = 0; j < itemsCount; j++) {
			item = items[j];
			if (array_length_1d(data) == array_length_1d(item)) {
				if (data[1] == item[1]) {
					data[0] = item[0];
					data[2] = item[2];
					data[5] = item[5];
					data[6] = item[6];
					data[7] = item[7];
					data[8] = item[8];
					//All Correct
					itemExists = true;
					break;
				}
			}
		}
		//This Removes Equipped Item If It's Not Exists Anymore
		//Or If Data Have Been Changed
		if (!itemExists) {
			global.equipments[i] = "";
		}
	}
}