if (instance_exists(obj_recipe_book)) {
	var recipeBook = obj_recipe_book;
	switch (pointing) {
		case "right": {
			if ((recipeBook.maxPage - recipeBook.currentPage) > 2) {
				recipeBook.currentPage += 2;
			}
		}break;
		case "left": {
			if (recipeBook.currentPage > 0) {
				recipeBook.currentPage -= 2;
			}
		}break;
	}
}