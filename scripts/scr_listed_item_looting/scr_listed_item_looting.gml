scr_check_weight();
if (moveToPlayer == true) {
	var itemAmount = ds_list_size(global.tempLoot);
	for (var i = 0; i < itemAmount; i++) {
		var itemSprite = ds_list_find_value(global.tempLoot, i);
		var spriteName_ = sprite_get_name(sprite_index);
		if (itemSprite == spriteName) {
			var index = ds_list_find_index(global.tempLoot, itemSprite);
			ds_list_delete(global.tempLoot, index);
			instance_destroy();
		}
	}
	//Toast 
	scr_add_new_toast(name);
	scr_save_to_inventory(spriteName, itemCount);
}