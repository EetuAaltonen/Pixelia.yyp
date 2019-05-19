//scr_item_info_struct()

if (updateValues) {
	updateValues = false;
	if (data != "null") {
		sprite_index = data[0];
		
		infoText = scr_listed_item_get_infoText(data);
		
		equipmentIndex = "";
		//Check If Equipped
		if (string_pos("equipment", data[2])) {
			scr_listed_item_check_equipped();
		}
		
		//Check If Mouse Over
		if (distance_to_point(mouse_x, mouse_y) == 0) {
			///Set inventory info text
			obj_inventory_controller.itemInfoText = infoText;	
		}
	}
}

if (checkSelected) {
	checkSelected = false;
	if (data != "null") {
		if (scr_hud_state_some_of_crafting()) {
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

///Drop items
if (droppingItem == true) {
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
