///Start dropping items
if (global.hudState == "inventory1" || global.hudState == "inventoryEquipments")
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
