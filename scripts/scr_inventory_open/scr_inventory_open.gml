var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

scr_set_global_hudstate("inventoryBackpack");
updateValues = true;
pageIndex = 1;
filter = "null";

//Create Buttons
var buttons = [
	["inventoryBackpack", "Backpack", "medium"],
	["inventoryEquipments", "Equipments", "medium"],
	["skillTree", "Skill Tree", "medium"],
	["Stats", "Stats", "small"],
	["save&exit", "Save And Exit", "medium"],
	["close", "Close", "small"],
];
var button;
var margin = 5;
var xPos = 0;
var width;
var spriteIndex;
var i;
var arrayLength = array_length_1d(buttons);
for (i = 0; i < arrayLength; i++) {
	button = buttons[i];
	if (button[2] == "medium") {
		spriteIndex = spr_inv_button_medium;
		width = 84;
	} else {
		spriteIndex = spr_inv_button_small;
		width = 40;
	}
	instance_create(viewX+4+xPos, viewY+40, obj_inv_button);
	(instance_nearest(viewX+4+xPos, viewY+40, obj_inv_button)).hudState = button[0];
	(instance_nearest(viewX+4+xPos, viewY+40, obj_inv_button)).infoText = button[1];
	(instance_nearest(viewX+4+xPos, viewY+40, obj_inv_button)).sprite_index = spriteIndex;
	(instance_nearest(viewX+4+xPos, viewY+40, obj_inv_button)).depth = obj_inventory_controller.depth-1;
	xPos += (width+margin);
}