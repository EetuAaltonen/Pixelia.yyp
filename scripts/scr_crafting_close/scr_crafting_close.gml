scr_close_global_hudstate();

//Destroy Buttons
if (instance_exists(obj_inv_button_parent)) {
	with (obj_inv_button_parent) instance_destroy();
}
//Destroy Listed Items
if (instance_exists(obj_listed_item)) {
	with (obj_listed_item) instance_destroy();
}
//Destroy Search Box
if (instance_exists(obj_menu_text_box)) {
	with (obj_menu_text_box) instance_destroy();
}

//Destroy Crafting Slots
if (instance_exists(obj_crafting_slot)) {
	with (obj_crafting_slot) instance_destroy();
}

//Destroy Crafted Item
if (instance_exists(obj_crafting_product)) {
	with (obj_crafting_product) instance_destroy();
}
//Destroy Recipe Book
if (instance_exists(obj_recipe_book)) {
	with (obj_recipe_book) instance_destroy();
}

//Destroy Close Button
if (instance_exists(obj_crafting_close_button)) {
	with (obj_crafting_close_button) instance_destroy();
}

scr_savegame();