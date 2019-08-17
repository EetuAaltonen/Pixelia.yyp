if (data != "null") {
	draw_self();
	
	///Draw equipped mark
	if (equipmentIndex != undefined) {
		if (equipmentIndex > -1) {
			draw_sprite(spr_listed_item_equipped_mark, 1, x+10, y+6);
		} else {
			draw_sprite(spr_listed_item_equipped_mark, 0, x+10, y+6);
		}
	}
	
}
