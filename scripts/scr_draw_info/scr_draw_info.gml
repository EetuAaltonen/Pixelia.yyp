//Font
draw_set_font(fnt_draw_gui_inv_small);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Draw Page Index
draw_set_halign(fa_center);
draw_text(scr_gui(19,"x"), scr_gui(68,"y"), string(string(pageIndex) + " / " + string(maxPageIndex)));
draw_set_halign(fa_left);

if (string_pos("shop", global.hudState)) {
	//Your Gold
	draw_text(scr_gui(183,"x"), scr_gui(68,"y"), "Your gold:  " + string(global.coins) + "  G");
} else {
	if (global.hudState == "stashWithdraw") {
		//Total And Weight
		draw_text(scr_gui(183,"x"), scr_gui(68,"y"), "Capacity:  " + string_format(abs(global.totalStashCapacity), 0, 2) + "  /  " +
					string(global.maxStashCapacity + global.stashCapacityPlus) + "  Pw");
	} else {
		//Total And Weight
		draw_text(scr_gui(183,"x"), scr_gui(68,"y"), "Capacity:  " + string_format(abs(global.totalInventoryCapacity), 0, 2) + "  /  " +
					string(global.maxInventoryCapacity + global.carryingCapacityPlus) + "  Pw");
	}
}

if (scr_hud_state_not_crafting()) {
	draw_set_valign(fa_top);
	//Item info text
	if (is_array(itemInfoText)) {
		var lineCount = array_length_1d(itemInfoText)
		var i;
		var txtHeight;
		for (i = 0; i < lineCount; i++) {
			txtHeight = string_height(itemInfoText[i]);
			draw_text(scr_gui(344,"x"), scr_gui(70+((txtHeight/global.resHAspect)*i),"y"), itemInfoText[i]);
		}
	} else {
		draw_text(scr_gui(344,"x"), scr_gui(70,"y"), string_hash_to_newline(itemInfoText));
	}
}