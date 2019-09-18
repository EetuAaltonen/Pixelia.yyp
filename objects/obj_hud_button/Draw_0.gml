if (sprite_index != spr_no_mask) {
	draw_self();
	if (infoText != undefined) {
		///Draw text
		//Font
		draw_set_font(fnt_inventory_text);
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);

		draw_text(x + (sprite_width/2), y + (sprite_height/2), string_hash_to_newline(infoText));

		///Selected
		if (global.hudAction == hudAction) {
		    var imageBlend = 100;
		    image_blend = make_colour_hsv(0, 0, imageBlend);
		} else {
		    image_blend = scr_highlight_default_value();
		}
	}
}