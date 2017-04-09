///Start dropping items
if (global.hudState == "inventory1")
{
    if (droppingItem == false)
    {
        //Create buttons to drop items
        if (createOnce == true)
        {
            instance_create(__view_get( e__VW.XView, 0 )+330, __view_get( e__VW.YView, 0 )+150,obj_button_increase);
            instance_create(__view_get( e__VW.XView, 0 )+170, __view_get( e__VW.YView, 0 )+150,obj_button_decrease);
            instance_create(__view_get( e__VW.XView, 0 )+250, __view_get( e__VW.YView, 0 )+190,obj_button_confirm);
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
		var typeName = "";
		if (string_pos("helmet", spriteName)) {
			typeName = "helmet";
		} else if (string_pos("shield", spriteName)) {
			typeName = "shield";
		}
		if (listSize == 0) {
			ds_list_add(global.equipments, spriteName);
		} else {
			var sameType = false;
			for (i = 0; i < listSize; i++) {
				equippedItem = ds_list_find_value(global.equipments, i);
				if	(string_pos(typeName, equippedItem)) {
					ds_list_replace(global.equipments, i, spriteName);
					break;
				}
			}
			idx = ds_list_find_index(global.equipments, spriteName)
			if (idx == -1) {
				ds_list_add(global.equipments, spriteName);
			}
		}
	} else {
		idx = ds_list_find_index(global.equipments, spriteName)
		if (idx != -1) {
			ds_list_delete(global.equipments, idx);
		}
	}
}
