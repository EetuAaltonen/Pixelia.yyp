var recipeBookOpen = false;
if (instance_exists(obj_recipe_book)) {
	if (obj_recipe_book.showRecipeBook) {
		recipeBookOpen = true;
	}
}
if (!recipeBookOpen) {
	if (instance_exists(obj_crafting_slot)) {
		var slotCount = instance_number(obj_crafting_slot);
		var i, slot;
		for (i = 0; i < slotCount; i++) {
			slot = instance_find(obj_crafting_slot, i);
			if (!slot.outputSlot.checkRecipe && slot.outputSlot.craftingStep == -1) {
				if (is_undefined(slot.data) && slot.index != -1) {
					slot.data = data;
					slot.data[ItemData.Count] = 1;
					slot.outputSlot.checkRecipe = true;
					break;
				}
			} else {
				break;	
			}
		}
	}
}