// Initialize Data
if (sprite_index == spr_no_mask && data != undefined) {
	if (scr_dropped_item_search_to_stack(data)) {
		instance_destroy();	
	}
	sprite_index = data[ItemData.Sprite];
	mask_index = sprite_index;
}