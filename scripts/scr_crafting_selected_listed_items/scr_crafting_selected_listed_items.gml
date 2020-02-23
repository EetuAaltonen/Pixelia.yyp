/// @description Check selected listed items
/// @param recipeMaterials - Slotted materials
/// @return Void

var recipeMaterials = argument0;

if (instance_exists(obj_listed_item)) {
	var instanceCount = instance_number(obj_listed_item);
	var i, j, instance, material, selected;
	for (i = 0; i < instanceCount; i++) {
		instance = instance_find(obj_listed_item, i);
		selected = false;
		if (!is_undefined(instance.data)) {
			var materialCount = ds_list_size(recipeMaterials);
			for (j = 0; j < materialCount; j++) {
				if (!selected) {
					material = ds_list_find_value(recipeMaterials, j);
					if (scr_item_compare_items(material, instance.data, "name")) {
						selected = true;
					}
				}
			}
		}
		instance.selected = selected;
	}
}