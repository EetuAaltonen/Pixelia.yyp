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
if (global.hudState == "inventory1" || global.hudState == "inventoryEquipments")
{
    if (obj_inventory_controller.pageUpdate == true)
    {
        instance_destroy();
    }
}
else if (global.hudState == "forge" ||
         global.hudState == "alchemy" ||
         global.hudState == "workbench")
{
    if (obj_crafting_controller.pageUpdate == true)
    {
        instance_destroy();
    }
}
else if (global.hudState == "shop")
{
    if (obj_inventory_controller.pageUpdate == true)
    {
        instance_destroy();
    }
}
else
{
    instance_destroy();
}
//scr_check_if_instance_destroy();
//scr_check_if_selected_true();

///Drop items
if (droppingItem == true)
{
    if (instance_exists(obj_button_confirm))
    {
        if (obj_button_confirm.confirmed == true)
        {
            droppingItem = false;
            obj_inventory_controller.pageUpdate = true;
            if (obj_button_confirm.value > 0)
            {
                droppedCount = obj_button_confirm.value;
                scr_drop_item(sprite_index);
            }
            if (instance_exists(obj_button_decrease))
            {
                with (obj_button_decrease) instance_destroy();
            }
            if (instance_exists(obj_button_increase))
            {
                with (obj_button_increase) instance_destroy();
            }
            if (instance_exists(obj_button_confirm))
            {
                with (obj_button_confirm) instance_destroy();
            }
            createOnce = true;
        }
    }
}
