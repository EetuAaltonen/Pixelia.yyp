//scr_item_info_struct()
// TODO: fix crafting code
/*if (product != "null") {
	if ((global.totalInventoryCapacity + (product[11]*product[3])) > (global.maxInventoryCapacity + global.carryingCapacityPlus)) {
		scr_add_new_toast("Inventory is full!");
	} else {
		var controller = obj_inventory_controller;
		
		if (instance_exists(obj_crafting_slot)) {
			var slot;
			var slotCount = instance_number(obj_crafting_slot);
			var i;
			for (i = 0; i < slotCount; i++) {
				slot = instance_find(obj_crafting_slot, i);
				if (slot.data != "null") {
					//Remove From Inventory
					scr_inventory_add_item(slot.data, -1);
					
					if (slot.data[3] - 1 > 0) {
						slot.data[3] -= 1;
					} else {
						slot.data = "null";
					}
				}
			}
		}
		
		scr_inventory_add_item(product, product[3]);
		controller.updateValues = true;
		checkRecipe = true;
	}
}
