var recipeBookOpen = false;
if (instance_exists(obj_recipe_book)) {
	if (obj_recipe_book.showRecipeBook) {
		recipeBookOpen = true;
	}
}
if (!recipeBookOpen) {
	if (instance_exists(obj_crafting_slot)) {
		//if (!selected) {
			var slotCount = instance_number(obj_crafting_slot);
			var i, slot;
			for (i = 0; i < slotCount; i++) {
				slot = instance_find(obj_crafting_slot, i);
				if (is_undefined(slot.data) && slot.index != -1) {
					if (!slot.outputSlot.checkRecipe && slot.outputSlot.craftingStep == -1) {
						slot.data = data;
						slot.data[ItemData.Count] = 1;
						//selected = true;
						slot.outputSlot.checkRecipe = true;
						break;
					}
				}
			}
		/*} else {
			count = instance_number(obj_crafting_slot);
			for (i = 0; i < count; i++) {
				slot = instance_find(obj_crafting_slot, i);
				if (!is_undefined(slot.data)) {
					if (scr_item_compare_items(slot.data, data)) {
						//data[1] == name
						slot.data = "null";
						slot.spriteIndex = "null";
						//selected = false;
						obj_crafting_product.checkRecipe = true;
						break;
					}
				}
			}
		}*/
	}
}