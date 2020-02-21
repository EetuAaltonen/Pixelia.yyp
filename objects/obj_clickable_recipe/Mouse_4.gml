//Import recipe to crafting
// TODO: Fix crafting code
/*var slot;
var material;
if (recipe != "null" && materials != "null") {
	var materialCount = ds_list_size(materials);
	var j = 0;
	var i, k;
	var slotCount = instance_number(obj_crafting_slot);
	for (i = j; i < slotCount; j++) {
		if (j < materialCount) {
			material = ds_list_find_value(materials, j);
			for (k = 0; k < material[3]; k++) {
				slot = instance_find(obj_crafting_slot, i++);
				slot.data = material;
				slot.spriteIndex = material[0];
			}
		} else {
			slot = instance_find(obj_crafting_slot, i++);
			slot.data = "null";
			slot.spriteIndex = "null";
		}
	}
	obj_crafting_product.checkRecipe = true;
	scr_crafting_recipe_book_close();
} else {
	scr_add_new_toast("Missing materials");	
}