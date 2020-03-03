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

if (!is_undefined(data)) {
	// Item
	draw_sprite_ext(
		data[ItemData.Sprite], 0,
		scr_position_to_gui(x, "x"),
		scr_position_to_gui(y, "y"),
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, 1
	);
}

// Progress arrow
if (index == -1) {
	draw_sprite_ext(
		spr_crafting_output_arrow, max(0, craftingStep),
		scr_position_to_gui(x - 50,"x"), scr_position_to_gui(y,"y"),
		global.resWAspect, global.resHAspect, 0, c_white, 1
	);
}