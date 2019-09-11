var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var items = argument0;

//Create / update listed items
var xPos = 17;
var yPos = 105;
var data = undefined;
var yMargin = 10;
var tempMargin;
var i;
var itemCount = ds_list_size(items);

for (i = 0; i < itemCount; i++) {
	data = ds_list_find_value(items, i);
	tempMargin = (i*yMargin);
	instance_create(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item);
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).index = i;
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).depth = depth-1;
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).sprite_index = data[ItemData.Sprite];
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).data = data;
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).updateValues = true;
}

global.tempLoot = items;