// Page index
var xPos = 12;
var yPos = 150;
var boxWidth = 80;
var boxHeight = 34;
var borderPadding = 4;
scr_hud_draw_background(
	xPos, yPos,
	boxWidth, boxHeight,
	make_color_rgb(48, 46, 44),
	1, false, false
);
scr_hud_draw_background(
	xPos + borderPadding,
	yPos + borderPadding,
	boxWidth - (borderPadding * 2),
	boxHeight - (borderPadding * 2),
	make_color_rgb(71, 64, 55),
	1, false, false
);
scr_draw_set_font(
	fnt_draw_gui_small,
	fa_center, fa_middle,
	c_black, 1
);
draw_text(
	xPos + (boxWidth / 2), yPos + (boxHeight / 2),
	string(pageIndex) + " / " + string(maxPageIndex)
);