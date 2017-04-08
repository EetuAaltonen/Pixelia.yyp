///Open crafting
if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    if (global.hudState != hudState)
    {
        //canOpenClose = false;
        //Create slots
        instance_create(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+117, obj_crafting_slot_1);
        instance_create(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+147, obj_crafting_slot_2);
        instance_create(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+177, obj_crafting_slot_3);
        instance_create(__view_get( e__VW.XView, 0 )+350, __view_get( e__VW.YView, 0 )+147, obj_crafting_slot_4);
        //Created item slot
        instance_create(obj_crafting_slot_4.x, obj_crafting_slot_4.y, obj_crafted_item);
        instance_create(__view_get( e__VW.XView, 0 )+400, __view_get( e__VW.YView, 0 )+54, obj_crafting_close_button);
        
        global.hudState = hudState;
        
        obj_crafting_controller.pageUpdate = true;
        obj_crafting_controller.current_page = 0;
    }
}

