/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
	requiredLevel; 9
}*/
if (product != "null") {
	if ((global.totalInventoryCapacity + (product[5]*product[3])) > (global.maxInventoryCapacity + global.carryingCapacityPlus)) {
		scr_add_new_toast("Inventory is full!");
	} else {
		var controller = obj_inventory_controller;
		
		if (instance_exists(obj_crafting_slot)) {
			var slot;
			var slotCount = instance_number(obj_crafting_slot);
			var i;
			for (i = 0; i < slotCount; i++) {
				slot = instance_find(obj_crafting_slot, i);
				if (slot.item != "null") {
					//Remove From Inventory
					scr_inventory_add_item(slot.item, -1);
					
					if (slot.item[3] - 1 > 0) {
						slot.item[3] -= 1;
					} else {
						slot.item = "null";
					}
				}
			}
		}
		
		scr_inventory_add_item(product, product[3]);
		controller.updateValues = true;
		checkRecipe = true;
	}
}
