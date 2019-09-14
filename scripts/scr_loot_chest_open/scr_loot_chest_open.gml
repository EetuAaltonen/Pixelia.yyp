var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);


var items = argument0;
var itemCount = array_length_1d(items);

//Create listed items
var color = make_color_rgb(71, 64, 55);
var borderColor = make_color_rgb(48, 46, 44);
var bgHeight = 20;
var bgXPadding = 4;
var borderPadding = 1;
var bgAlpha = 1;
var borderAlpha = 1;
var renderData = [
	[ItemData.Sprite, 0, 26, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
	[ItemData.Name, 15, 120, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha],
	[ItemData.Count, 137, 40, bgHeight, bgXPadding, color, bgAlpha, borderColor, borderPadding, borderAlpha]
];
var renderDataCount = array_length_1d(renderData);
var lastRenderData = renderData[renderDataCount-1];
var maxWidth = (lastRenderData[RenderData.TextMargin] + lastRenderData[RenderData.BgWidth])

var yMargin = 22;
var xPos = (viewWidth / 2) - (maxWidth / 2) + ((renderDataCount - 1) * bgXPadding);
var yPos = (viewHeight / 2) - ((itemCount / 2) * yMargin) - yMargin / 2;
scr_inventory_create_list(items, undefined, renderData, xPos, yPos, yMargin);

global.tempLoot = items;