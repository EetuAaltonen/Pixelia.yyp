//scr_item_info_struct()

var value = argument0;
var type = argument1;
var items = scr_items_data();
var arraySize = array_length_1d(items);
var item = undefined;
var i, data;

for (i = 0; i < arraySize; i++) {
	data = items[i];
	switch (type) {
		case ItemData.Sprite: {
			if (data[ItemData.Sprite] == value) {
				item = data;
			}
		}break;
		case ItemData.Name: {
			if (data[ItemData.Name] == value) {
				item = data;
			}
		}break;
	}
}
if (is_undefined(item)) {
	show_message("Item: " + string(value) + " : " + type + " not found!");	
}
return item;