scr_close_global_hudstate();

//Destroy Buttons
if (instance_exists(obj_inv_button)) {
	with (obj_inv_button) instance_destroy();
}
//Destroy Buttons
if (instance_exists(obj_inv_button_parent)) {
	with (obj_inv_button_parent) instance_destroy();
}
//Remove Listed Items
scr_listed_item_remove();

//Remove Search Box
scr_hud_search_box_remove();

scr_savegame();