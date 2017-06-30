//Page change		
if (showRecipeBook && currentPage > 0) {
	currentPage -= 1;
	if (instance_exists(obj_clickable_text)) {
        with (obj_clickable_text) instance_destroy();
    }
	createOnce = true;
}