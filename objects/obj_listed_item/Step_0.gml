if (checkSelected) {
	checkSelected = false;
	if (data != undefined) {
		if (global.hudState == HudStates.Crafting) {
			selected = false;
			if (instance_exists(obj_crafting_slot)) {
				var slot;
				var slotCount = instance_number(obj_crafting_slot);
				var i;
				for (i = 0; i < slotCount; i++) {
					slot = instance_find(obj_crafting_slot, i);
					if (slot.item != "null") {
						if (scr_item_compare_items(slot.item, data, "full")) {
							selected = true;
							break;
						}
					}
				}
			}
		}
	}
}

// Drop items
// TODO: Drop count dialog
if (droppingItem) {
    if (instance_exists(obj_button_confirm)) {
        if (obj_button_confirm.confirmed == true) {
            droppingItem = false;
            obj_inventory_controller.pageUpdate = true;
            if (obj_button_confirm.value > 0) {
                droppedCount = obj_button_confirm.value;
                scr_drop_item(sprite_index);
            }
            if (instance_exists(obj_button_decrease)) {
                with (obj_button_decrease) instance_destroy();
            }
            if (instance_exists(obj_button_increase)) {
                with (obj_button_increase) instance_destroy();
            }
            if (instance_exists(obj_button_confirm)) {
                with (obj_button_confirm) instance_destroy();
            }
            createOnce = true;
        }
    }
}
