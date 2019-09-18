var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var items = argument0;
var hudState = argument1;
var itemCount = ds_list_size(items);

//Create listed items
var renderData = scr_inventory_get_render_data(hudState);
var renderDataCount = array_length_1d(renderData);
var firstRenderData = renderData[0];
var lastRenderData = renderData[renderDataCount-1];
var maxWidth = (lastRenderData[RenderData.TextMargin] + lastRenderData[RenderData.BgWidth])

var yMargin = 20;
var xPos = (viewWidth / 2) - (maxWidth / 2) + (firstRenderData[RenderData.BgWidth] / 4);
var yPos = (viewHeight / 2) - ((itemCount - 1) * (yMargin/2));
scr_inventory_create_list(items, undefined, renderData, xPos, yPos, yMargin);

global.tempLoot = items;