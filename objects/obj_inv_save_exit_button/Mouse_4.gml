//Delete created objects
global.hudState = "null";
scr_first_loading_screen_objects();
var i, object;
var arrayLength = array_length_1d(Object);
for(i = 1; i < arrayLength; i++)
{
    object = Object[i];
    with(object) 
    {
        instance_destroy();
    }
}
scr_savegame();
ds_list_destroy(global.inventory);
obj_screen_controller.menu_state = "main_menu";
obj_screen_controller.create_buttons = true;
room_goto(Menu);

