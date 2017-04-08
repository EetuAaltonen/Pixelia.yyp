if (global.hudState == "null" || global.hudState == "map")
{
    if (global.hudState == "map")
    {
        global.hudState = "null";
    }
    else
    {
        global.hudState = "map";
        instance_create(__view_get( e__VW.XView, 0 )+250, __view_get( e__VW.YView, 0 )+100, obj_map_mountain);
        instance_create(__view_get( e__VW.XView, 0 )+280, __view_get( e__VW.YView, 0 )+110, obj_map_mountain);
        instance_create(__view_get( e__VW.XView, 0 )+310, __view_get( e__VW.YView, 0 )+120, obj_map_mountain);
        instance_create(__view_get( e__VW.XView, 0 )+400, __view_get( e__VW.YView, 0 )+90, obj_map_forest);
        instance_create(__view_get( e__VW.XView, 0 )+400, __view_get( e__VW.YView, 0 )+200, obj_map_castle);
        instance_create(__view_get( e__VW.XView, 0 )+50, __view_get( e__VW.YView, 0 )+50, obj_map_castle);
        instance_create(__view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+200, obj_map_castle);
        instance_create(__view_get( e__VW.XView, 0 )+400, __view_get( e__VW.YView, 0 )+50, obj_map_castle);
        instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_map_grid);
        instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_map_cargo_cart);
    }
}

