///Coins and auto healing??
if (global.coins < 0)
{
    global.coins = 0;
}

//Auto-healing
if (global.auto_healing == 1
    and global.potions > 0
    and global.health < 5)
{
    global.potions -= 1;
    global.health += 10;
}

///Open inventory
if (keyboard_check_pressed(vk_tab))
{
    if (global.hudState == "null")
    {
        if (instance_exists(obj_player))
        {
            if (obj_player.action_state == "null")
            {
                global.hudState = "inventory1";
                pageUpdate = true;
                current_page = 0;
                filter = "null";
                //Create buttons
                var buttons;
                buttons[0] = obj_inv_backpack_button;
                buttons[1] = obj_inv_equipments_button;
                buttons[2] = obj_inv_skill_tree_button;
                buttons[3] = obj_inv_stats_button;
                buttons[4] = obj_inv_save_exit_button;
                buttons[5] = obj_inv_close_button;
                var arrayLength = array_length_1d(buttons);
                for (i = 0; i < arrayLength; i++) {
                    instance_create(__view_get( e__VW.XView, 0 )+4+(i*(85+5)), __view_get( e__VW.YView, 0 )+54, buttons[i]);
                }
            }
        }
    }
    else if (string_pos("inventory", string(global.hudState)))
    {    
        global.hudState = "null";
        pageUpdate = true;
        scr_savegame();
    }
}

///Page change
scr_page_change();

