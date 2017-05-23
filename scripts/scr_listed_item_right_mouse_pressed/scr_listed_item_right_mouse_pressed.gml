///Start dropping items
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
if (global.hudState == "inventory1")
{
    if (droppingItem == false)
    {
        //Create buttons to drop items
        if (createOnce == true)
        {
            instance_create(viewX+330, viewY+150,obj_button_increase);
            instance_create(viewX+170, viewY+150,obj_button_decrease);
            instance_create(viewX+250, viewY+190,obj_button_confirm);
            obj_button_confirm.item_count = itemCount;
            createOnce = false;
        }
        droppingItem = true;
    }
}

///Toggle equipped
else if (global.hudState == "inventoryEquipments") {
	var equippedItem;
	var idx;
	var listSize = ds_list_size(global.equipments);
	if (!equipped) {
		var typeName = scr_unequip_type_name(spriteName);
		if (listSize == 0) {
			ds_list_add(global.equipments, spriteName);
			scr_equip_add_buffs(spriteName);
		} else {
			var sameType = false;
			for (var i = 0; i < listSize; i++) {
				equippedItem = ds_list_find_value(global.equipments, i);
				if	(string_pos(typeName, equippedItem)) {
					scr_equip_remove_buffs(equippedItem);
					ds_list_replace(global.equipments, i, spriteName);
					scr_equip_add_buffs(spriteName);
					break;
				}
			}
			idx = ds_list_find_index(global.equipments, spriteName);
			if (idx == -1) {
				ds_list_add(global.equipments, spriteName);
				scr_equip_add_buffs(spriteName);
			}
		}
	} else {
		idx = ds_list_find_index(global.equipments, spriteName)
		if (idx != -1) {
			ds_list_delete(global.equipments, idx);
		}
		scr_equip_remove_buffs(spriteName);
	}
	if (global.armor > (global.maxArmor + global.armorPlus)) {
		global.armor = (global.maxArmor + global.armorPlus);
	}
	obj_inventory_controller.buffsUpdate = true;
}
else if (global.hudState == "looting") {
	scr_check_weight();
	if (moveToPlayer == true) {
		var itemAmount = ds_list_size(global.tempLoot);
		for (var i = 0; i < itemAmount; i++) {
			var itemSprite = ds_list_find_value(global.tempLoot, i);
			var spriteName_ = sprite_get_name(sprite_index);
			if (itemSprite == spriteName) {
				var index = ds_list_find_index(global.tempLoot, itemSprite);
				ds_list_delete(global.tempLoot, index);
				instance_destroy();
			}
		}
		//Toast 
	    scr_add_new_toast(name);
		scr_save_to_inventory(spriteName, itemCount);
	}
}
