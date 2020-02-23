var recipeBookOpen = false;
if (instance_exists(obj_recipe_book)) {
	if (obj_recipe_book.showRecipeBook) {
		recipeBookOpen = true;
	}
}
if (!recipeBookOpen) {
	if (!is_undefined(data)) {
		if (!outputSlot.checkRecipe && outputSlot.craftingStep == -1) {
			if (index == -1) {
				// Start crafting
				craftingStep = 0;
				alarm[1] = craftingStepDelay;
			} else {
				data = undefined;
				outputSlot.checkRecipe = true;
			}
		}
	}
}