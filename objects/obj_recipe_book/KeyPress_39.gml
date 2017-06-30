//Page change
if (showRecipeBook && scr_can_change_next_page(currentPage, recipeCount, recipesPerPage)) {
	currentPage += 1;
	if (instance_exists(obj_clickable_text)) {
        with (obj_clickable_text) instance_destroy();
    }
	createOnce = true;
}