scr_close_global_hudstate();

//Destroy Buttons
if (instance_exists(obj_hud_button)) {
	with (obj_hud_button) instance_destroy();
}
//Destroy Listed Items
if (instance_exists(obj_listed_item)) {
	with (obj_listed_item) instance_destroy();
}
//Destroy Search Box
if (instance_exists(obj_menu_text_box)) {
	with (obj_menu_text_box) instance_destroy();
}

scr_savegame();