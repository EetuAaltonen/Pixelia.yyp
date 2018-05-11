//Page change		
if (showRecipeBook && currentPage > 0) {
	currentPage -= 1;
	if (instance_exists(obj_clickable_recipe)) {
        with (obj_clickable_recipe) instance_destroy();
    }
	createOnce = true;
}