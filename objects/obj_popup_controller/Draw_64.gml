if (global.popUp && !is_undefined(message) && !is_undefined(keyInfo)) {
	//Font
	draw_set_font(fnt_draw_gui_medium);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	
	var textHeight = string_height(message);
	var textPadding = 20;
	var dialogWidth = 600;
	var dialogHeight = ((textHeight + textPadding) * 3);
	
	// Draw border
	scr_hud_draw_background(
		guiWidth / 2,
		guiHeight / 2,
		dialogWidth + 20, dialogHeight + 20,
		make_color_rgb(73, 125, 153),
		1, true, true
	);
	// Draw background
	scr_hud_draw_background(
		guiWidth / 2,
		guiHeight / 2,
		dialogWidth, dialogHeight,
		make_color_rgb(65, 87, 99),
		1, true, true
	);
	
	draw_set_valign(fa_middle);
	draw_text(guiWidth / 2, (guiHeight / 2) - textHeight, string_hash_to_newline(message));
	draw_set_valign(fa_top);
	draw_text(guiWidth / 2, (guiHeight / 2) + textHeight, keyInfo);
}