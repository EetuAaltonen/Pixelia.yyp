obj_recipe_book.showRecipeBook = false;
if (instance_exists(obj_clickable_text)) {
	with (obj_clickable_text) instance_destroy();
}
if (instance_exists(obj_recipe_book_cross)) {
	with (obj_recipe_book_cross) instance_destroy();
}
instance_destroy();