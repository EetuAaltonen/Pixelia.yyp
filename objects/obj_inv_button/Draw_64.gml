if (infoText != undefined) {
	var viewX = view_get_xport(0);
	var viewY = view_get_yport(0);
	
	var xPos = x + (sprite_width/2);
	var yPos = y + (sprite_height/2);

	var positionX = scr_draw_position_on_screen(xPos, "x");
	var positionY = scr_draw_position_on_screen(yPos, "y");
	var textPosX = scr_draw_camera_position_to_gui(positionX, "x");
	var textPosY = scr_draw_camera_position_to_gui(positionY, "y");

	//Font
	draw_set_font(fnt_draw_gui_inv_small);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(viewX+textPosX, viewY+textPosY, infoText);
}