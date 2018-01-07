///Check recipes
if (instance_exists(obj_crafting_slot)) {
    if (checkRecipe) {
		checkRecipe = false;
        product = scr_crafting_check_recipe();
		
		if (instance_exists(obj_listed_item)) {
			var listedItem;
			var itemCount = instance_number(obj_listed_item);
			var i;
			for (i = 0; i < itemCount; i++) {
				listedItem = instance_find(obj_listed_item, i);
				listedItem.checkSelected = true;
			}
		}
    }
}