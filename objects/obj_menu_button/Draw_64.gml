if (action != "null") {	
	var viewX = view_get_xport(0);
	var viewY = view_get_yport(0);

	var posX = scr_draw_position_on_screen(x, "x");
	var posY = scr_draw_position_on_screen(y, "y");

	//Font
	draw_set_font(fnt_draw_gui_menu_text);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	switch (action) {
		case "resolution": {
			if (resolution != "null") {
				draw_text(scr_gui(posX, "x"), scr_gui(posY, "y"), string(resolution[0]) + "x" + string(resolution[1]));
			}
		}break;
		default: {
			if (infoText != "") {
				draw_text(scr_gui(posX, "x"), scr_gui(posY, "y"), infoText);
			}
		}break;
	}
}