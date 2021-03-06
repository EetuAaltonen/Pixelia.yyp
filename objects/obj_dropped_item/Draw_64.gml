// Draw Count Above Item
if (data != undefined) {
	if (data[ItemData.Count] > 0) {
		if (global.hudState == HudStates.Null || global.hudState == HudStates.Minigame) {
			var posX = scr_pos_to_gui(x, Dim.X);
			var posY = scr_pos_to_gui(y, Dim.Y);

			//Font
			draw_set_font(fnt_draw_gui_dropped_item);
			var color = make_colour_hsv(26, 255, 255);
			draw_set_color(color);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);

			draw_text(scr_gui(posX, "x"), scr_gui(posY-10, "y"), string(data[ItemData.Count]) + "x");	
		}
	}
}