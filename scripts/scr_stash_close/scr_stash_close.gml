scr_close_global_hudstate();

//Destroy Buttons
if (instance_exists(obj_hud_button)) {
	with (obj_hud_button) instance_destroy();
}
//Remove Listed Items
scr_listed_item_remove();

//Remove Search Box
scr_hud_search_box_remove();

scr_savegame();