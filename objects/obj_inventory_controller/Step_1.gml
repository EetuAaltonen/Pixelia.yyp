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

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

///Open inventory
if (keyboard_check_pressed(vk_tab))
{
    scr_inventory_open_n_close();
}

///Page change
scr_page_change();

