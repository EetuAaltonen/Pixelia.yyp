var xPos = 390;
var yPos = 150;
var boxWidth = 210;
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

var capacityText = "";

if (global.hudState == HudStates.Stash &&
	global.hudAction == HudActions.Withdraw) {
	// Stash
	capacityText += string_format(abs(global.totalStashCapacity), 0, 2) + " / " + string(global.maxStashCapacity + global.stashCapacityPlus);
} else {
	// Inventory
	capacityText += string_format(abs(global.totalInventoryCapacity), 0, 2) + " / " + string(global.maxInventoryCapacity + global.carryingCapacityPlus);
}
capacityText += "Pw";

draw_text( xPos + (boxWidth / 2), yPos + (boxHeight / 2), capacityText);