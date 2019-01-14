//scr_item_info_struct()
//Draw item info
if (sprite_index && data != "null") {
	
	//Font
	draw_set_font(fnt_draw_gui_inv_medium);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	var yPos = scr_draw_position_on_screen(y, "y");
	
	//Item Description
	draw_set_color(c_black);
	if (data[10] > global.level) {
		draw_set_color(c_red);
	}
	draw_text(scr_gui(42,"x"), scr_gui(yPos,"y"), data[1]);
	draw_set_color(c_black);
	//Item Count
	draw_text(scr_gui(185,"x"), scr_gui(yPos,"y"), string(data[3]) + "  x");
	if (string_pos("inventory", global.hudState)) {
		//Item Weight
		draw_text(scr_gui(250,"x"), scr_gui(yPos,"y"), string(data[5]) + "  Pw");
	} else if (string_pos("shop", global.hudState)) {
		//Item Price
		draw_set_color(c_black);
		if (string_pos("shopBuy", global.hudState)) {
			if (data[6] > global.coins) {
				draw_set_color(c_red);
			}
		}
		draw_text(scr_gui(250,"x"), scr_gui(yPos,"y"), scr_coins_format(data[6]));
		draw_set_color(c_black);
	}	
}
