scr_close_global_hud_state();

//Destroy Buttons
if (instance_exists(obj_inv_button)) {
	with (obj_inv_button) instance_destroy();
}
//Remove Listed Items
scr_listed_item_remove();

//Remove Search Box
scr_hud_search_box_remove();

scr_savegame();