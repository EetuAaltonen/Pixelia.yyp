//scr_item_info_struct()

if (mask_index != spr_inv_item_bg) {
	mask_index = spr_inv_item_bg;	
}

if (!obj_inventory_controller.updateValues) {
	if (name == "" && data != "null") {
		sprite_index = data[0];
		mask_index = spr_inv_item_bg;
		name = data[1];
		count = data[3];
		//data[6] = round(data[6]*(1 + global.sellRate));
		var description;
		var info = scr_item_info_struct();
		var mark = scr_item_mark_struct();
		var i, j = 0;
		var arraySize = array_length_1d(data);
		infoText = "";
		for (i = 0; i < arraySize; i++) {
			if (data[i] != "null") {
				if (i == 1 || i == 3 || i == 4 || i == 5 ||
					i == 6 || i == 7 || i == 8 || i == 9 || i == 10) {
					description = info[i] + string(data[i]) + mark[i];
					if (data[i] == -1) {
						description = info[i] + "---" + mark[i];
					}
					if (i == 7 && data[i] != "null") {
						//Replace Effect Code With Name
						description = info[i] + scr_item_search_effect(data[i], "key") + mark[i];
					}
					else if (i == 5 && data[3] > 1) {
						//Calculate Stack Weight
						description += " (" + string(data[i] * data[3]) + ")";
					} else if (i == 6 && data[3] > 1) {
						//Calculate Stack Price
						description += " (" + string(data[i] * data[3]) + ")";
					}
					infoText[j++] = description;
				}
			}
		}
		equipmentIndex = "";
		//Check If Equipped
		if (string_pos("equipment", data[2]) != 0) {
			scr_listed_item_check_equipped();
		}
		
		//Check If Mouse Over
		if (distance_to_point(mouse_x, mouse_y) == 0) {
			///Set inventory info text
			obj_inventory_controller.itemInfoText = infoText;	
		}
	}
}

//Check if equipped
/*if (checkEquipped) {
	sprite_index_ = sprite_index;
	spriteName = sprite_get_name(sprite_index_);
	name = scr_inventory_item_name(spriteName);
	weight = scr_inventory_item_weight(spriteName);
	armor = scr_inventory_item_armor(spriteName);
	type = scr_inventory_item_type(spriteName);
	if (string_pos("inventoryEquipments", type)) {
		buffs = ds_list_create();
		buffs = scr_inventory_item_buffs(spriteName);
	}
	infoText =	name + "\n" +
				"Weight: " + string(weight) + " Pw\n" 
	if (armor > 0) {
		infoText += "Armor: " + string(armor) + "\n";
	}
	if (buffs) {
		var listLength = ds_list_size(buffs);
		for(i = 0; i < listLength; i++) {
			var buffName = ds_list_find_value(buffs, i);
			var buffAmount = ds_list_find_value(buffs, i+1);
			var mark1 = "";
			if (buffAmount >= 0) {
				mark1 = "+";
			}
			var mark2 = scr_buff_punctuation_mark(buffName);
			infoText += buffName + ": " + mark1 + string(buffAmount) + mark2 + "\n";
			i++
		}
	}
	checkEquipped = false;
}*/

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
