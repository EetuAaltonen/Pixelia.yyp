///Draw equipped mark
if (sprite_index) {
	draw_self();
}
if (equipmentIndex != "") {
	if (equipmentIndex > -1) {
		draw_sprite(spr_list_item_equipped_mark, 1, x+10, y+6);
	} else {
		draw_sprite(spr_list_item_equipped_mark, 0, x+10, y+6);
	}
}
