if (craftingStep < maxCraftingStep) {
	craftingStep += 1;
	alarm[1] = craftingStepDelay;
} else {
	craftingStep = -1;
	scr_crafting_start(data, recipeMaterials);
	obj_inventory_controller.updateValues = true;
	checkRecipe = true;
}