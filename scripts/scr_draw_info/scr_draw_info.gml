//Font
draw_set_font(fnt_draw_gui_inventory);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Draw Page Index
draw_text(scr_gui(6,"x"), scr_gui(75,"y"), string("PAGE:    " + string(pageIndex) + "  /  " + string(maxPageIndex)));

if (string_pos("shop", global.hudState)) {
	//Your Gold
	draw_text(scr_gui(190,"x"), scr_gui(75,"y"), "Your gold:  " + string(global.coins) + "  G");
} else {
	if (global.hudState == "stashWithdraw") {
		//Total And Weight
		draw_text(scr_gui(183,"x"), scr_gui(75,"y"), "Capacity:  " + string_format(abs(global.totalStashCapacity), 0, 2) + "  /  " +
					string(global.maxStashCapacity + global.stashCapacityPlus) + "  Pw");
	} else {
		//Total And Weight
		draw_text(scr_gui(183,"x"), scr_gui(75,"y"), "Capacity:  " + string_format(abs(global.totalInventoryCapacity), 0, 2) + "  /  " +
					string(global.maxInventoryCapacity + global.carryingCapacityPlus) + "  Pw");
	}
}

if (scr_hud_state_not_crafting()) {
	draw_set_valign(fa_top);
	//Item info text
	draw_text(scr_gui(344,"x"), scr_gui(75,"y"), string_hash_to_newline(itemInfoText));
}