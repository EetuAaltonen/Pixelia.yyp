if (action != "null") {	
	var posX = scr_pos_to_gui(x, Dim.X);
	var posY = scr_pos_to_gui(y, Dim.Y);

	//Font
	draw_set_font(fnt_draw_gui_medium);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	switch (action) {
		case MenuAction.Resolution: {
			if (resolution != "null") {
				draw_text(posX, posY, string(resolution[0]) + "x" + string(resolution[1]));
			}
		}break;
		default: {
			if (!is_undefined(infoText)) {
				draw_text(posX, posY, infoText);
			}
		}break;
	}
}