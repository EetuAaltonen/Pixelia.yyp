var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var buttonDataList = argument0;
var startX = 4;
var startY = 56;
var button;
var margin = 5;
var xPos = 0;
var width;
var spriteIndex;
var i;
var controller = obj_inventory_controller;
if (controller == self) {
	controller = self;	
}
var arrayLength = array_length_1d(buttonDataList);
for (i = 0; i < arrayLength; i++) {
	var buttonData = buttonDataList[i];
	if (buttonData[1] == ButtonSize.Medium) {
		spriteIndex = spr_inv_button_medium;
		width = 60;
	} else {
		spriteIndex = spr_inv_button_small;
		width = 28;
	}
	var c instance_create(viewX+startX+xPos, viewY+startY, obj_inv_button);
	(instance_nearest(viewX+startX+xPos, viewY+startY, obj_inv_button)).hudAction = buttonData[0];
	(instance_nearest(viewX+startX+xPos, viewY+startY, obj_inv_button)).infoText = HudActionText[buttonData[0]];
	(instance_nearest(viewX+startX+xPos, viewY+startY, obj_inv_button)).sprite_index = spriteIndex;
	(instance_nearest(viewX+startX+xPos, viewY+startY, obj_inv_button)).depth = controller.depth-1;
	xPos += (width+margin);
}