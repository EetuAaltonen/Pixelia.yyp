//Font
draw_set_font(fnt_draw_gui_inv_small);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Draw Page Index
draw_set_halign(fa_center);
draw_text(scr_gui(17,"x"), scr_gui(80,"y"), string(string(pageIndex) + " / " + string(maxPageIndex)));

draw_set_halign(fa_right);
//Your Gold
draw_text(scr_gui(490,"x"), scr_gui(60,"y"), scr_coins_format(global.coins));
//Merchant's Gold
if (string_pos("shop", global.hudState) && merchant != "null") {
	draw_text(scr_gui(490,"x"), scr_gui(80,"y"), scr_coins_format(merchant.money));
}

draw_set_halign(fa_left);

if (global.hudState == "stashWithdraw") {
	//Total And Weight
	draw_text(scr_gui(183,"x"), scr_gui(80,"y"), "Capacity:  " + string_format(abs(global.totalStashCapacity), 0, 2) + "  /  " +
				string(global.maxStashCapacity + global.stashCapacityPlus) + "  Pw");
} else {
	//Total And Weight
	draw_text(scr_gui(183,"x"), scr_gui(80,"y"), "Capacity:  " + string_format(abs(global.totalInventoryCapacity), 0, 2) + "  /  " +
				string(global.maxInventoryCapacity + global.carryingCapacityPlus) + "  Pw");
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
			draw_text(scr_gui(330,"x"), scr_gui(100+((txtHeight/global.resHAspect)*i),"y"), itemInfoText[i]);
		}
	} else {
		draw_text(scr_gui(330,"x"), scr_gui(100,"y"), string_hash_to_newline(itemInfoText));
	}
}