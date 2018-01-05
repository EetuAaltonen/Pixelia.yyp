var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

scr_set_global_hudstate("inventoryBackpack");
updateValues = true;
pageIndex = 1;
filter = "null";
//Create Buttons
var buttons = [
	obj_inv_backpack_button,
	obj_inv_equipments_button,
	obj_inv_skill_tree_button,
	obj_inv_stats_button,
	obj_inv_save_exit_button,
	obj_inv_close_button
];
var margin = 5;
var arrayLength = array_length_1d(buttons);
for (var i = 0; i < arrayLength; i++) {
	instance_create(viewX+4+(i*(85+margin)), viewY+40, buttons[i]);
	buttons[i].depth = (depth-1);
}