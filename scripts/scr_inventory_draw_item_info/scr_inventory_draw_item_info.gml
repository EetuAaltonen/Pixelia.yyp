var xPos = 645;
var yPos = 194;
var bgWidth = 418;
var bgHeight = 438;
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

if (!is_undefined(itemInfoText)) {
	var spriteXPos = 996;
	var spriteYPos = 296;
	var spriteScale = 4;
	
	xPos = 680;
	yPos = 230;
	
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
} else if (global.hudAction == HudActions.Equipment) {
	xPos += borderPadding;
	bgWidth -= (borderPadding * 2);
	var equipmentBgWidth = 40;
	var equipmentBgHeight = equipmentBgWidth;
	var equipmentSlots = [
		// Helmet
		[xPos + (bgWidth / 2), yPos + 30],
		// Amulet
		[xPos + (bgWidth / 2), yPos + 84],
		// Gloves
		[xPos + (bgWidth / 4), yPos + 84],
		// Ring
		[xPos + (bgWidth * 0.75), yPos + 84],
		// Armor
		[xPos + (bgWidth / 2), yPos + 138],
		// PriWeapon
		[xPos + (bgWidth / 4), yPos + 138],
		// SecWeapon
		[xPos + (bgWidth * 0.75), yPos + 138],
		// Belt
		[xPos + (bgWidth / 2), yPos + 192],
		// Boots
		[xPos + (bgWidth / 2), yPos + 244]
	];
	
	var i, slot, equipment;
	var slotCount = array_length_1d(equipmentSlots);
	for (i = 0; i < slotCount; i++) {
		slot = equipmentSlots[i];
		scr_hud_draw_background(
			slot[0], slot[1],
			equipmentBgWidth, equipmentBgHeight,
			make_color_rgb(173, 166, 158),
			1, true, false
		);
		if (global.equipment[i] != "") {
			equipment = global.equipment[i];
			draw_sprite_ext(
				equipment[ItemData.Sprite], 0,
				slot[0], slot[1] + (equipmentBgHeight / 2),
				guiWRatio, guiHRatio,
				image_angle, c_white, 1
			);
		}
	}
}