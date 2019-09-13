/// @description Creates list of items on the screen
/// @param items - ???
/// @param renderData - ???
/// @param xPos - ???
/// @param yPos - ???
/// @param xMargin - ???
/// @param yMargin - ???
/// @return void

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var items = argument0;
var itemsPerPage = argument1;
var renderData = argument2;
var xPos = argument3;
var yPos = argument4;
var yMargin = argument5;
var i, data;
var itemCount = ds_list_size(items);
var tempInstance;

if (itemsPerPage == undefined) { itemsPerPage = itemCount; }

for (i = 0; i < itemsPerPage; i++) {
	data = "null";
	if (i < itemCount) {
		data = ds_list_find_value(items, i);
	}
	tempInstance = instance_create(viewX+xPos, viewY+yPos+(i*yMargin), obj_listed_item);
	tempInstance.index = i;
	if (data != "null") {
		tempInstance.sprite_index = data[ItemData.Sprite];
	}
	tempInstance.data = data;
	tempInstance.renderData = renderData;
	tempInstance.controller = self;
}