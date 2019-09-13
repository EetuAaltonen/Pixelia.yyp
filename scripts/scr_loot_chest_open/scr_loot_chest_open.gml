var items = argument0;

//Create / update listed items
var xPos = 17;
var yPos = 105;
var yMargin = 19;
var renderData = [
	[ItemData.Name, 20],
	[ItemData.Count, 70]
];

scr_inventory_create_list(items, undefined, renderData, xPos, yPos, yMargin);

/*for (i = 0; i < itemCount; i++) {
	data = ds_list_find_value(items, i);
	tempMargin = (i*yMargin);
	instance_create(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item);
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).index = i;
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).sprite_index = data[ItemData.Sprite];
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).data = data;
	(instance_nearest(viewX+xPos, viewY+yPos+tempMargin, obj_listed_item)).updateValues = true;
}*/

global.tempLoot = items;