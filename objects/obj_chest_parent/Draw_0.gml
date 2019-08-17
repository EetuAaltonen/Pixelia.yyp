draw_self();
scr_highlight_self();

if (opened) {
	var spriteName = sprite_get_name(sprite_index);
	switch (spriteName) {
		case "spr_loot_chest": {scr_loot_chest_open();break;}
		case "spr_gold_chest": {scr_gold_chest_open();break;}
	}
}