///Draw equipped mark
if (sprite_index && data != "null") {
	mask_index = defaultMask;
	draw_self();
	
	if (equipmentIndex != "") {
		if (equipmentIndex > -1) {
			draw_sprite(spr_listed_item_equipped_mark, 1, x+10, y+6);
		} else {
			draw_sprite(spr_listed_item_equipped_mark, 0, x+10, y+6);
		}
	}
	
} else {
	mask_index = noMask;
}
