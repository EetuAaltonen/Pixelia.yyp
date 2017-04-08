///Fill info
/*if (get_attributes == true)
{
    sprite_index_ = sprite_index; //Sprite_index
    //Get id
    scr_item_get_id();
    //Get attributes
    scr_item_get_attributes();
    if (typeId == 5)
    {
        //Check if equipped
        scr_check_if_equipped();
    }
    get_attributes = false;
}*/

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
