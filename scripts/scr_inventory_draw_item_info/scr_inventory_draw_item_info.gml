var xPos = 645;
var yPos = 194;
var bgWidth = 418;
var bgHeight = 486;
var borderPadding = 4;

// Box border
scr_hud_draw_background(
	xPos, yPos,
	bgWidth, bgHeight,
	make_color_rgb(48, 46, 44),
	1, false, false
);
// Info box
scr_hud_draw_background(
	xPos + borderPadding,
	yPos + borderPadding,
	bgWidth - (borderPadding * 2),
	bgHeight - (borderPadding * 2),
	make_color_rgb(71, 64, 55),
	1, false, false
);

xPos = 680;
yPos = 230;

if (!is_undefined(itemInfoText)) {
	var spriteXPos = 996;
	var spriteYPos = 290;
	var spriteScale = 4;
	
	draw_sprite_ext(
		itemInfoText[ItemInfoText.Sprite], 0,
		spriteXPos, spriteYPos,
		spriteScale, spriteScale,
		image_angle, c_white, 1
	);
	
	scr_draw_set_font(
		fnt_draw_gui_medium,
		fa_left, fa_top,
		make_color_rgb(242, 204, 65), 1
	);
	
	// Name title
	draw_text(xPos, yPos, itemInfoText[ItemInfoText.Name]);
	var nameHeight = string_height(string_hash_to_newline(itemInfoText[ItemInfoText.Name]));
	yPos += nameHeight;
		
	scr_draw_set_font(
		fnt_draw_gui_small,
		fa_left, fa_top,
		c_black, 1
	);
	
	// Dynamic description
	draw_text(xPos, yPos, string_hash_to_newline(itemInfoText[ItemInfoText.Description]));
	var descHeight = string_height("'" + string_hash_to_newline(itemInfoText[ItemInfoText.Description]) + "'");
	yPos += descHeight + nameHeight;
	
	// Item details
	draw_text(xPos, yPos, string_hash_to_newline(itemInfoText[ItemInfoText.Details]));
}