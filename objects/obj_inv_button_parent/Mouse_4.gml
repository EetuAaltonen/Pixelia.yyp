///Change hudState
if (global.hudState != hudState)
{
    global.hudState = hudState;
    obj_inventory_controller.current_page = 0;
    obj_inventory_controller.pageUpdate = true;
    obj_inventory_controller.createOnce = true;
}

