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
var type = argument1;
var index = scr_listed_item_get_equipment_type_index(type);
var listSize = array_length_1d(global.equipments);
var item = global.equipments[index];

if (listSize > 0) {
	if (string_pos(string_lower(itemName), string_lower(item[1])) != 0) {
		return index;
	}
}
return false;