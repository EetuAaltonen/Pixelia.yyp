//Set Close Hud State
var recipeBookOpen = false;
if (instance_exists(obj_recipe_book)) {
	if (obj_recipe_book.showRecipeBook) {
		recipeBookOpen = true;
	}
}
if (!recipeBookOpen) {
	scr_crafting_close();
}