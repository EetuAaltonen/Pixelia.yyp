if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    if (global.hudState != "forge" && can_open_or_close == true)
    {
        can_open_or_close = false;
        global.hudState = "forge";
        alarm[1] = 30;
        
        //Create
        instance_create(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+117, obj_forg_slot_1); //Slots
        instance_create(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+147, obj_forg_slot_2);
        instance_create(__view_get( e__VW.XView, 0 )+300, __view_get( e__VW.YView, 0 )+177, obj_forg_slot_3);
        instance_create(__view_get( e__VW.XView, 0 )+350, __view_get( e__VW.YView, 0 )+147, obj_forg_slot_4);
        
        instance_create(__view_get( e__VW.XView, 0 )+464, __view_get( e__VW.YView, 0 )+54, obj_craft_close_button);
        instance_create(__view_get( e__VW.XView, 0 )+350, __view_get( e__VW.YView, 0 )+147, obj_forg_crafted_item); //Crafted item (slot 4)
        
        obj_forge_controller.pageUpdate = true;
        obj_forge_controller.current_page = 0;
    }
}

///Press Tab or 'E' to close forge
if (keyboard_check_pressed(ord("E") || keyboard_check_pressed(vk_tab)))
{
    if (global.hudState == "forge" and can_open_or_close == true)
    {
        can_open_or_close = false;
        global.hudState = "null";
        alarm[1] = 30;
    }
}

