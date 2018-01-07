/*if (instance_exists(obj_listed_item)) {
	var count = instance_number(obj_listed_item);
	var i;
	var listedItem;
	for (i = 0; i < count; i++) {
		listedItem = instance_find(obj_listed_item, i);
		if (listedItem.data[1] == item) {
			listedItem.selected = "null";
			break;
		}
	}
}*/
	
item = "null";
spriteIndex = "null";
	
obj_crafting_product.items[index] = "";
obj_crafting_product.checkRecipe = true;