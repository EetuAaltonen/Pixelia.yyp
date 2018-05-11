//Import recipe to crafting
/*var slot;
var data;
if (material[0] != "" && material[1] != "" && material[2] != "") {
	var i;
	var count = instance_number(obj_crafting_slot);
	for (i = 0; i < count; i++) {
		slot[i] = instance_find(obj_crafting_slot, i);
	}
	var arraySize = array_length_1d(recipe);
	for (i = 0; i < 3; i++) { 
		if (recipe[i] != "" && recipe[i] != "null") {
			data = material[i];
			slot[i].item = data;
			slot[i].spriteIndex = data[0];
		}  else {
			if (i < count) {
				//data[1] == name
				slot[i].item = "null";
				slot[i].spriteIndex = "null";
			}
		}
	}
	obj_crafting_product.checkRecipe = true;
	scr_crafting_recipe_book_close();
} else {
	scr_add_new_toast("Missing materials");	
}