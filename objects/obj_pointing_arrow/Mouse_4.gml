if (instance_exists(obj_recipe_book)) {
	var recipeBook = obj_recipe_book;
	switch (pointing) {
		case "right": {
			if (scr_can_change_next_page(recipeBook.currentPage, recipeBook.recipeCount, recipeBook.recipesPerPage)) {
				recipeBook.currentPage += 1;
				if (instance_exists(obj_clickable_recipe)) {
			        with (obj_clickable_recipe) instance_destroy();
			    }
				recipeBook.createOnce = true;
			}
		}break;
		case "left": {
			if (recipeBook.currentPage > 0) {
				recipeBook.currentPage -= 1;
				if (instance_exists(obj_clickable_recipe)) {
			        with (obj_clickable_recipe) instance_destroy();
			    }
				recipeBook.createOnce = true;
			}
		}break;
	}
}