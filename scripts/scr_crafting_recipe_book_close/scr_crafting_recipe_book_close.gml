obj_recipe_book.showRecipeBook = false;
if (instance_exists(obj_clickable_recipe)) {
	with (obj_clickable_recipe) instance_destroy();
}
if (instance_exists(obj_recipe_book_cross)) {
	with (obj_recipe_book_cross) instance_destroy();
}
instance_destroy();