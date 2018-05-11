var recipe = argument0;
if (recipe != "null") {
	if (instance_exists(obj_recipe_book)) {
		if (obj_recipe_book.recipeInfo[1] == scr_recipe("product", recipe)) {
			obj_recipe_book.recipeInfo = ["null", "null", "null"];
		}
	}
}