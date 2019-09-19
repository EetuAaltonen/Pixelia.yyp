if (infoText != undefined) {
	var xPos = scr_draw_position_on_screen(x + (sprite_width/2), "x");
	var yPos = scr_draw_position_on_screen(y + (sprite_height/2), "y");
	var textPosX = scr_draw_camera_position_to_gui(xPos, "x");
	var textPosY = scr_draw_camera_position_to_gui(yPos, "y");

	//Font
	draw_set_font(fnt_draw_gui_inv_small);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(textPosX, textPosY, infoText);
}