if (recipe != "null" && materials = "null") {
	materials = ds_list_create();
	
	var i, j;
	var materialCount = scr_recipe("lastMatIndex", recipe);
	var material, foundMaterial;
	var foundCount;
	var alreadyExists;
	
	for (i = 0; i < materialCount; i++) {
		alreadyExists = false;
		for (j = 0; j < ds_list_size(materials); j++) {
			material = ds_list_find_value(materials, j)
			if (recipe[i] == material[1]) {
				material[3] += 1;
				ds_list_set(materials, j, material);
				alreadyExists = true;
			}
		}
		if (!alreadyExists) {
			material = scr_item_search_data(recipe[i], ItemData.Name);
			material[3] = 1;
			ds_list_add(materials, material);
		}
	}
	title = scr_recipe("product", recipe);
	recipeInfo = scr_crafting_ini_recipe_info(recipe, materials);
}