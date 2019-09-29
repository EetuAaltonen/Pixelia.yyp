// Draw toast
if (global.hudState != HudStates.RoomChange && drawToast && !is_undefined(toastMessage)) {
	scr_draw_set_font(
		fnt_draw_gui_small,
		fa_right, fa_middle,
		c_white, 1
	);
	
	var xPos = guiWidth - 12;
	var textMargin = 6;
	var bgWidth = (string_width(toastMessage) + (textMargin * 2));
	var bgHeight = 40;
	
	scr_hud_draw_background(
		xPos - bgWidth, toastYPos,
		bgWidth, bgHeight,
		make_color_rgb(2, 33, 48),
		toastAlpha, false, false
	);
	
	draw_text_colour(xPos - textMargin, toastYPos + (bgHeight / 2),
		string(toastMessage), c_white, c_white, c_white, c_white, toastAlpha);
}