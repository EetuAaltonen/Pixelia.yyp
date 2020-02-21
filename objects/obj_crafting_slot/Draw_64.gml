if (!is_undefined(data)) {
	var bgWidth = 50;
	var bgHeight = 50;
	var borderPadding = 2;

	var xPos = scr_position_to_gui(x, "x");
	var yPos = scr_position_to_gui(y, "y");
	
	// Border
	scr_hud_draw_background(
		xPos, yPos,
		bgWidth + (borderPadding * 2),
		bgHeight + (borderPadding * 2),
		c_black,
		1,
		true, true
	);
	
	// Box
	scr_hud_draw_background(
		xPos, yPos,
		bgWidth, bgHeight,
		c_gray,
		1,
		true, true
	);
	
	// Item
	draw_sprite_ext(
		data[ItemData.Sprite], 0,
		scr_position_to_gui(x, "x"),
		scr_position_to_gui(y, "y"),
		guiWRatio, guiHRatio,
		image_angle, c_white, 1
	);
} else {
    image_blend = scr_highlight_default_value();
}