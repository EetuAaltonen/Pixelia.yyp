if (infoText != undefined) {
	var xPos = scr_pos_to_gui(x + (sprite_width/2), Dim.X);
	var yPos = scr_pos_to_gui(y + (sprite_height/2), Dim.Y);

	//Font
	draw_set_font(fnt_draw_gui_small);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(xPos, yPos, infoText);
}