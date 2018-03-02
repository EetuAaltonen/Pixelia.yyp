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

var itemName = argument0;
var data;
var inventory = global.inventory; //global.equippedItems
var listSize = ds_list_size(inventory);
var i;
for (i = 0; i < listSize; i++) {
	data = ds_list_find_value(inventory, i);
	if (data[1] == itemName) {
		return data;
	}
}
return "";