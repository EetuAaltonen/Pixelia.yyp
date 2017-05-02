var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var controller = obj_inventory_controller;

if (global.hudState == "null")
{
    if (instance_exists(obj_player))
    {
        if (obj_player.action_state == "null")
        {
			global.hudState = "inventory1";
            controller.pageUpdate = true;
            controller.current_page = 0;
            controller.filter = "null";
            //Create buttons
            var buttons = [
				obj_inv_backpack_button,
				obj_inv_equipments_button,
				obj_inv_skill_tree_button,
				obj_inv_stats_button,
				obj_inv_save_exit_button,
				obj_inv_close_button
			];
            var arrayLength = array_length_1d(buttons);
            for (var i = 0; i < arrayLength; i++) {
                instance_create(viewX+4+(i*(85+5)), viewY+54, buttons[i]);
            }
        }
    }
}
else if (string_pos("inventory", string(global.hudState)))
{    
    global.hudState = "null";
    controller.pageUpdate = true;
    scr_savegame();
}