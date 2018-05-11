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
	requiredLevel; 9
}*/

var value = argument0;
var type = argument1;
var items = scr_items_data();
var data;
var arraySize = array_length_1d(items);
var item = "null";
var i;

for (i = 0; i < arraySize; i++) {
	data = items[i];
	switch (type) {
		case "sprite": { if (data[0] == value) {item = data; return item;} }break;
		case "name": { if (data[1] == value) {item = data; return item;} }break;
	}
}
show_message("Item: " + string(value) + " : " + type + " not found!");
return;