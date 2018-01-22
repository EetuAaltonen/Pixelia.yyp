//Page Index background
draw_sprite(spr_inv_item_description_bg, 0, scr_gui(87,"x"), scr_gui(95,"y"));
//Draw Page Index
draw_text(scr_gui(22,"x"), scr_gui(95,"y"), string("PAGE:    " + string(pageIndex) + "  /  " + string(maxPageIndex)));

if (string_pos("shop", global.hudState)) {
	//Your Gold Background
	draw_sprite(spr_inv_item_description_bg, 0, scr_gui(255,"x"), scr_gui(95,"y"));
	//Your Gold
	draw_text(scr_gui(190,"x"), scr_gui(95,"y"), "Your gold:  " + string(global.coins) + "  G");
} else {
	//Total And Weight Background
	draw_sprite(spr_inv_item_description_bg, 0, scr_gui(255,"x"), scr_gui(95,"y"));
	if (global.hudState == "stashWithdraw") {
		//Total And Weight
		draw_text(scr_gui(190,"x"), scr_gui(95,"y"), "Capacity:  " + string_format(abs(global.totalStashCapacity), 0, 2) + "  /  " +
					string(global.maxStashCapacity + global.stashCapacityPlus) + "  Pw");
	} else {
		//Total And Weight
		draw_text(scr_gui(190,"x"), scr_gui(95,"y"), "Capacity:  " + string_format(abs(global.totalInventoryCapacity), 0, 2) + "  /  " +
					string(global.maxInventoryCapacity + global.carryingCapacityPlus) + "  Pw");
	}
}

if (scr_hud_state_crafting()) {
	//Vertical align
	draw_set_valign(fa_top);
	//Font
	draw_set_font(fnt_inventory_item_info_text);

	//Item info background
	draw_sprite(spr_inv_item_info_bg, 0, scr_gui(334,"x"), scr_gui(85,"y"));
	//Item info text
	draw_text(scr_gui(344,"x"), scr_gui(90,"y"), itemInfoText);
}