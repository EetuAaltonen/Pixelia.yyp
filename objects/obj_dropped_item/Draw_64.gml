//Draw Count On Item
if (count > 0) {
	if (global.hudState == "null" || global.hudState == "minigame") {
		var viewX = view_get_xport(0);
		var viewY = view_get_yport(0);

		var posX = scr_draw_position_on_screen(x, "x");
		var posY = scr_draw_position_on_screen(y, "y");

		//Font
		draw_set_font(fnt_draw_gui_dropped_item);
		var color = make_colour_hsv(26, 255, 255);
		draw_set_color(color);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);

		draw_text(scr_gui(posX, "x"), scr_gui(posY-10, "y"), string(count) + "x");	
	}
}