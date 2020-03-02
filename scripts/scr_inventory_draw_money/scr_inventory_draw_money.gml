var xPos = GuiWidth - 17;
var yPos = 136;
var boxWidth = 210;
var boxHeight = 50;
var borderPadding = 4;
var moneyIconHMargin = 25;
var moneyIconVMargin = 6;
var moneyColor = c_orange;

// Player gold
scr_hud_draw_background(
	xPos - boxWidth, yPos,
	boxWidth, boxHeight,
	make_color_rgb(48, 46, 44),
	1, false, false
);
scr_hud_draw_background(
	xPos - boxWidth + borderPadding,
	yPos + borderPadding,
	boxWidth - (borderPadding * 2),
	boxHeight - (borderPadding * 2),
	make_color_rgb(71, 64, 55),
	1, false, false
);

draw_sprite_ext(
	spr_money_icon, 0,
	xPos - moneyIconHMargin,
	yPos + (boxHeight / 2) + moneyIconVMargin,
	GuiWRatio, GuiHRatio,
	image_angle, c_white, 1 
);

scr_draw_set_font(
	fnt_draw_gui_small,
	fa_right, fa_middle,
	moneyColor, 1
);

draw_text(xPos - 50, yPos + (boxHeight / 2), string(global.coins) + "G");

// Merchant gold
if (global.hudState == HudStates.Shop) {
	yPos = yPos - boxHeight - 6;
	scr_hud_draw_background(
		xPos - boxWidth, yPos,
		boxWidth, boxHeight,
		make_color_rgb(48, 46, 44),
		1, false, false
	);
	scr_hud_draw_background(
		xPos - boxWidth + borderPadding,
		yPos + borderPadding,
		boxWidth - (borderPadding * 2),
		boxHeight - (borderPadding * 2),
		make_color_rgb(71, 64, 55),
		1, false, false
	);

	draw_sprite_ext(
		spr_money_icon, 0,
		xPos - moneyIconHMargin,
		yPos + (boxHeight / 2) + moneyIconVMargin,
		GuiWRatio, GuiHRatio,
		image_angle, c_white, 1 
	);
	
	scr_draw_set_font(
		fnt_draw_gui_small,
		fa_right, fa_middle,
		moneyColor, 1
	);
	
	draw_text(xPos - 50, yPos + (boxHeight / 2), "M: " + string(merchant.money) + "G");
}