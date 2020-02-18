/// @description Get render data with specified hudState
/// @param hudState - ???
/// @return array - Render data
var hudState = argument0;
// Default values
var color = make_color_rgb(71, 64, 55);
var borderColor = make_color_rgb(48, 46, 44);
var bgHeight = 46;
var bgXPadding = 15;
var borderPadding = 4;
var bgAlpha = 1;
var borderAlpha = 1;

switch (hudState) {
	case HudStates.Inventory: {
		return [
			[ItemData.Sprite, 0, 50, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Name, 26, 360, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Count, 391, 92, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
		];
	}break;
	case HudStates.Shop: {
		return [
			[ItemData.Sprite, 0, 50, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Name, 26, 360, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Count, 391, 92, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Price, 488, 92, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
		];
	}break;
	case HudStates.Loot: {
		return [
			[ItemData.Sprite, 0, 50, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Name, 26, 360, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Count, 391, 92, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
		];
	}break;
	case HudStates.Crafting: {
		return [
			[ItemData.Sprite, 0, 50, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Name, 26, 360, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
			[ItemData.Count, 391, 92, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
		];
	}break;
	default: {
		return [];
	}
}