/// @description Updates list of items on the screen
/// @param items - ???
var items = argument0;
if (instance_exists(obj_listed_item)) {
	var itemCount = ds_list_size(items);
	var instanceCount = instance_number(obj_listed_item);
	var i, instance, data;
	for (i = 0; i < instanceCount; i++) {
		instance = instance_find(obj_listed_item, i);
		data = undefined;
		if (i < itemCount) {
			data = ds_list_find_value(items, i);	
		}
		if (!is_undefined(data)) {
			instance.sprite_index = data[ItemData.Sprite];
		}
		instance.data = data;
		instance.updateValues = true;
	}
}