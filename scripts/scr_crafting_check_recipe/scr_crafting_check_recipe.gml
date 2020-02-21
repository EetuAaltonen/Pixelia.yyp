//scr_item_info_struct()

// TODO: fix crafting code
/*var i, j, k;
var item = "null";
var correct = 0;
var recipe, product;

var slotCount = instance_number(obj_crafting_slot);
var slot;
var slots = ds_list_create();
for (i = 0; i < slotCount; i++) {
	ds_list_add(slots, instance_find(obj_crafting_slot, i));
}
var tempSlots = ds_list_create();

var recipeCorrect = 0;
var recipes = scr_crafting_recipes(global.hudState);

var recipeCount = array_length_1d(recipes);
var materialCount;

for (i = 0; i < recipeCount; i++) {
	recipeCorrect = 0;
	recipe = recipes[i];
	materialCount = scr_recipe("lastMatIndex", recipe);
	scr_ds_list_copy(tempSlots, slots, "false");
	for (j = 0; j < materialCount; j++) {
		for (k = 0; k < slotCount; k++) {
			slot = ds_list_find_value(tempSlots, k);
			if (slot.data != "null") {
				if (slot.data[1] == recipe[j]) {
					recipeCorrect += 1;
					ds_list_delete(tempSlots, k);
					slotCount = ds_list_size(tempSlots);
					break;
				}
			} else {
				ds_list_delete(tempSlots, k--);
				slotCount = ds_list_size(tempSlots);	
			}
		}
	}
	for (j = 0; j < slotCount; j++) {
		slot = ds_list_find_value(tempSlots, j);
		if (slot.data != "null") {
			recipeCorrect = 0;
			break;
		}
	}
	if (recipeCorrect == materialCount) {
		materialCount = array_length_1d(recipe);
		product = scr_item_search_data(scr_recipe("product", recipe), "name");
		product[3] = scr_recipe("count", recipe);
		return product;	
	}
}

return item;