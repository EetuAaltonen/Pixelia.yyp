if (scr_inventory_check_capacity(data[ItemData.Weight], true)) {
	var lootCount = ds_list_size(global.tempLoot);
	for (var i = 0; i < lootCount; i++) {
		var tempItem = ds_list_find_value(global.tempLoot, i);
		if (array_equals(data, tempItem)) {
			ds_list_delete(global.tempLoot, i);
			instance_destroy();
		}
	}
	//Toast 
	scr_add_new_toast(data[ItemData.Name]);
	scr_inventory_add_item(data, data[ItemData.Count]);
}