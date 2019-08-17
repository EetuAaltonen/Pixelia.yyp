//scr_item_info_struct()
//Draw item info
if (sprite_index && data != "null") {
	
	//Font
	draw_set_font(fnt_draw_gui_inv_medium);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	var yPos = scr_draw_position_on_screen(y+1, "y");
	
	//Item Description
	draw_set_color(c_black);
	if (data[13] > global.level) {
		draw_set_color(c_red);
	}
	draw_text(scr_gui(41,"x"), scr_gui(yPos,"y"), data[1]);
	draw_set_color(c_black);
	//Item Count
	draw_text(scr_gui(185,"x"), scr_gui(yPos,"y"), string(data[3]) + "  x");
	
	if (global.hudState == HudStates.Inventory) {
		//Item Weight
		draw_text(scr_gui(224,"x"), scr_gui(yPos,"y"), string(data[11]) + "  Pw");	
	} else if (global.hudState == HudStates.Shop) {
		//Item Price
		draw_set_color(c_black);
		if (global.hudAction == HudActions.Buy) {
			if (data[12] > global.coins) {
				draw_set_color(c_red);
			}
		}
		draw_text(scr_gui(224,"x"), scr_gui(yPos,"y"), scr_coins_format(data[12]));
		draw_set_color(c_black);
	}
}
