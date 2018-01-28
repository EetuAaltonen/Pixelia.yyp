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
						items[slot.index] = "";
					}
				}
			}
		}
		
		scr_inventory_add_item(product, product[3]);
		controller.updateValues = true;
		checkRecipe = true;
	}
}
/*if (visible) {
    if (instance_exists(obj_crafting_slot_1) &&
        instance_exists(obj_crafting_slot_2) &&
        instance_exists(obj_crafting_slot_3))
    {
        var slot1 = obj_crafting_slot_1;
        var slot2 = obj_crafting_slot_2;
        var slot3 = obj_crafting_slot_3;
        var slot4 = obj_crafting_slot_4;
        var itemType;
        //Change material count in inventory
        if (slot1.spriteIndex != false)
        {
            itemType = scr_inventory_item_type(slot1.spriteIndex)
            if (!string_pos("tool", itemType)) {
                added_amount = -1;
                scr_save_to_inventory(slot1.spriteIndex, added_amount);
            }
            slot1.spriteIndex = false;  
        }
        if (slot2.spriteIndex != false)
        {
            itemType = scr_inventory_item_type(slot2.spriteIndex)
            if (!string_pos("tool", itemType)) {
                added_amount = -1;
                scr_save_to_inventory(slot2.spriteIndex, added_amount);
            }
            slot2.spriteIndex = false;   
        }
        if (slot3.spriteIndex != false)
        {
            itemType = scr_inventory_item_type(slot3.spriteIndex)
            if (!string_pos("tool", itemType)) {
                added_amount = -1;
                scr_save_to_inventory(slot3.spriteIndex, added_amount);
            }
            slot3.spriteIndex = false;   
        }
        //Add crafted material
        added_amount = 1;
        scr_save_to_inventory(slot4.spriteIndex, added_amount);
        slot4.spriteIndex = false;
        spriteIndex = false;
        checkRecipe = true;
        obj_crafting_controller.pageUpdate = true;
    }
}
