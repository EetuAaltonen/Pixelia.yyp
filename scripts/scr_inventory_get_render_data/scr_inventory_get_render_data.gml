/// @description Get render data with specified hudState
/// @param hudState - ???
/// @return array - Render data
var hudState = argument0;
// Default values
var color = make_color_rgb(71, 64, 55);
var borderColor = make_color_rgb(48, 46, 44);
var bgHeight = 18;
var bgXPadding = 8;
var borderPadding = 1;
var bgAlpha = 1;
var borderAlpha = 1;

switch (hudState) {
	case HudStates.Inventory: {
		return [
			[ItemData.Sprite, 0, 26, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Name, 15, 198, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Count, 215, 46, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
		];
	}break;
	case HudStates.Shop: {
		return [
			[ItemData.Sprite, 0, 26, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Name, 15, 152, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Count, 169, 46, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Price, 217, 46, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
		];
	}break;
	case HudStates.Loot: {
		return [
			[ItemData.Sprite, 0, 26, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Name, 15, 120, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Count, 137, 40, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
		];
	}break;
}
return [];