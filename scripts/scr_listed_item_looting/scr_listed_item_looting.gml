if (scr_inventory_check_capacity(data[ItemData.Weight], true)) {
	var lootCount = ds_list_size(controller.items);
	for (var i = 0; i < lootCount; i++) {
		var tempItem = ds_list_find_value(controller.items, i);
		if (array_equals(data, tempItem)) {
			ds_list_delete(controller.items, i);
			break;
		}
	}
	//Toast 
	scr_add_new_toast(data[ItemData.Name]);
	if (data[ItemData.Sprite] == spr_coin) {
		global.coins += data[ItemData.Count];
	} else {
		scr_inventory_add_item(data, data[ItemData.Count]);	
	}
	
	controller.updateValues = true;
}