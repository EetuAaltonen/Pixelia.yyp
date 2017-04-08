///Open shop
if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    if (global.hudState != "shop")
    {
        if (instance_exists(obj_player))
        {
            if (obj_player.x > x)
            {
                image_xscale = 1;
            }
            else
            {
                image_xscale = -1;
            }
        }
        global.hudState = "shop";
        obj_inventory_controller.pageUpdate = true;
        obj_inventory_controller.current_page = 0;
        instance_create(__view_get( e__VW.XView, 0 )+444, __view_get( e__VW.YView, 0 )+54, obj_inv_close_button);
    }
}

