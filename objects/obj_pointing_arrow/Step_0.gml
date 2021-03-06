switch (pointing) {
	case "right": {
		image_index = 0;
	}break;
	case "left": {
		image_index = 1;
	}break;
}

if (instance_exists(obj_recipe_book)) {
	var recipeBook = obj_recipe_book;
	if (!recipeBook.showRecipeBook) {
		instance_destroy();
	}
	switch (pointing) {
		case "right": {
			if (scr_can_change_next_page(recipeBook.currentPage, recipeBook.recipeCount, recipeBook.recipesPerPage)) {
				image_alpha = 1;
			} else {
				image_alpha = 0.7;
			}
		}break;
		case "left": {
			if (recipeBook.currentPage > 0) {
				image_alpha = 1;
			} else {
				image_alpha = 0.7;
			}
		}break;
	}
} else {
	instance_destroy();
}