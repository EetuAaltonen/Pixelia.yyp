///Check recipes
if (instance_exists(obj_crafting_slot)) {
    if (checkRecipe) {
		checkRecipe = false;
        product = scr_crafting_check_recipe();
    }
}