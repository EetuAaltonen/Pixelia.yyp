/// @description Check if any recipe fulfilled
/// @param recipeMaterials - Set value into ds_list of required materials of fulfilled recipe
/// @return ItemData - Craftable item

var recipeMaterials = argument0;
ds_list_clear(recipeMaterials);

var recipes = scr_crafting_recipes(global.hudAction);
var output = undefined;
var slotMaterials = ds_list_create();

// Collect slotted materials
var slotCount = instance_number(obj_crafting_slot);
var i, j, k, slot, tempMaterial, slotMaterialCount, exists;
for (i = 0; i < slotCount; i++) {
	slot = instance_find(obj_crafting_slot, i);
	if (slot.index != -1) {
		if (!is_undefined(slot.data)) {
			exists = false;
			slotMaterialCount = ds_list_size(slotMaterials);
			for (j = 0; j < slotMaterialCount; j++) {
				if (!exists) {
					tempMaterial = ds_list_find_value(slotMaterials, j);
					if (tempMaterial[ItemData.Sprite] == slot.data[ItemData.Sprite]) {
						tempMaterial[ItemData.Count] += 1;
						ds_list_set(slotMaterials, j, tempMaterial);
						exists = true;
					}
				}
			}
			if (!exists) {
				ds_list_add(slotMaterials, slot.data);
			}
		}
	}
}

var slotMaterialCount = ds_list_size(slotMaterials);
if (slotMaterialCount > 0) {
	// Check if recipe is fulfilled
	var recipes = scr_crafting_recipes(global.hudAction);
	var recipeCount = array_length_1d(recipes);
	var recipe, tempMaterials, material, materialCount, recipeFulfilled, reqMaterial;
	for (i = 0; i < recipeCount; i++) {
		recipeFulfilled = true;
		recipe = recipes[i];
		materialCount = array_length_1d(recipe[Recipe.Materials]);
		// Check required materials found in slots
		for (j = 0; j < materialCount; j++) {
			if (recipeFulfilled) {
				reqMaterial = false;
				tempMaterials = recipe[Recipe.Materials];
				material = tempMaterials[j];
				for (k = 0; k < slotMaterialCount; k++) {
					if (!reqMaterial) {
						tempMaterial = ds_list_find_value(slotMaterials, k);
						// Compare slot and recipe materials
						if (material[Material.Sprite] == tempMaterial[ItemData.Sprite] &&
							material[Material.Count] == tempMaterial[ItemData.Count]) {
							reqMaterial = true;
						}
					}
				}
				if (!reqMaterial) {
					recipeFulfilled = false;
				}
			}
		}
		// Recipe fulfilled
		if (recipeFulfilled && (slotMaterialCount == array_length_1d(recipe[Recipe.Materials]))) {
			output = scr_item_search_data(recipe[Recipe.Output], ItemData.Sprite);
			output[ItemData.Count] = recipe[Recipe.Count];
			// Materials to remove from intentory
			scr_ds_list_copy(recipeMaterials, slotMaterials, false);
		}
	}
}
return output;