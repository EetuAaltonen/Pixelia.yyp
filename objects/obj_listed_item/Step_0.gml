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

if (name == "" && data != "null") {
	var info = [
		"Sprite: ",
		"Name: ",
		"Type: ",
		"Count: ",
		"Durability: ",
		"Weight: ",
		"Price: ",
		"Effect: ",
		"Effect Amount: "
	]
	var mark = [
		"",
		"",
		"",
		" x",
		" / 100",
		" Pw",
		" G",
		"",
		""
	]
	sprite_index = data[0];
	name = data[1];
	count = data[3];
	
	var description;
	var i;
	var arraySize = array_length_1d(data);
	for (i = 0; i < arraySize; i++) {
		if (data[i] != "null") {
			if (i == 1 || i == 3 || i == 4 || i == 5 ||
				i == 6 || i == 7 || i == 8) {
				description = info[i] + string(data[i]) + mark[i];
				infoText += description + "\n";
			}
		}
	}
}

//Check if equipped
if (checkEquipped) {
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
}

///Destroy function
/*if (global.hudState == "inventoryBackpack" || global.hudState == "inventoryEquipments") {
	instance_destroy();
} else if (global.hudState == "forge" ||
         global.hudState == "alchemy" ||
         global.hudState == "workbench")
{
    if (obj_crafting_controller.pageUpdate == true) {
        instance_destroy();
    }
} else if (global.hudState == "shop") {
    if (obj_inventory_controller.pageUpdate == true)
    {
        instance_destroy();
    }
} else {
    if (global.hudState != "looting") {
		instance_destroy();	
	}
}*/
//scr_check_if_instance_destroy();
//scr_check_if_selected_true();

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
