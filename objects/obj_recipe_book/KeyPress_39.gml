//Page change
if (showRecipeBook && scr_can_change_next_page(currentPage, recipeCount, recipesPerPage)) {
	currentPage += 1;
	if (instance_exists(obj_clickable_recipe)) {
        with (obj_clickable_recipe) instance_destroy();
    }
	createOnce = true;
}