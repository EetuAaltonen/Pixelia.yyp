if (index == -1 && checkRecipe &&
	!obj_inventory_controller.updateValues) {
	checkRecipe = false;
    data = scr_crafting_check_recipe(recipeMaterials);
	scr_crafting_selected_listed_items(recipeMaterials);
}