scr_global_hud_state_reset();

//Remove Listed Items
scr_listed_item_remove();

//Remove Search Box
scr_hud_search_box_remove();

//Destroy Crafting Slots
if (instance_exists(obj_crafting_slot)) {
	with (obj_crafting_slot) instance_destroy();
}

//Destroy Recipe Book
if (instance_exists(obj_recipe_book)) {
	with (obj_recipe_book) instance_destroy();
}

//Detroy Recipe Book Close Button
if (instance_exists(obj_recipe_book_cross)) {
	with (obj_recipe_book_cross) instance_destroy();
}

//Detroy Listed Recipes
if (instance_exists(obj_clickable_recipe)) {
	with (obj_clickable_recipe) instance_destroy();
}

//Destroy Close Button
if (instance_exists(obj_crafting_close_button)) {
	with (obj_crafting_close_button) instance_destroy();
}

scr_savegame();