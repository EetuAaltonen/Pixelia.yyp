var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);


var items = argument0;
var itemCount = array_length_1d(items);

//Create listed items
var bgXPadding = 4;
var renderData = scr_inventory_get_render_data(global.hudState);
var renderDataCount = array_length_1d(renderData);
var lastRenderData = renderData[renderDataCount-1];
var maxWidth = (lastRenderData[RenderData.TextMargin] + lastRenderData[RenderData.BgWidth])

var yMargin = 22;
var xPos = (viewWidth / 2) - (maxWidth / 2) + ((renderDataCount - 1) * bgXPadding);
var yPos = (viewHeight / 2) - ((itemCount / 2) * yMargin) - yMargin / 2;
scr_inventory_create_list(items, undefined, renderData, xPos, yPos, yMargin);

global.tempLoot = items;