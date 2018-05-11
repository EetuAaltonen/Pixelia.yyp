/*RecipeInfo {
	sprite; 0
	title; 1
	materials; 2
}*/

var recipeInfo = argument0;
if (recipeInfo != "null") {
	if (instance_exists(obj_recipe_book)) {
		obj_recipe_book.recipeInfo[0] = recipeInfo[0];
		obj_recipe_book.recipeInfo[1] = recipeInfo[1];
		obj_recipe_book.recipeInfo[2] = recipeInfo[2];
	}
}