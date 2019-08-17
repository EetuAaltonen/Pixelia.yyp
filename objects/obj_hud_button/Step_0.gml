if (infoText != undefined && sprite_index == spr_no_mask) {
	//Font
	draw_set_font(fnt_inventory_text);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if (string_length(infoText) < 35) {
		sprite_index = spr_hud_small_button;	
	} else {
		sprite_index = spr_hud_medium_button;
	}
}