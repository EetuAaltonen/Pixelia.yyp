//Delete created objects
global.hudState = "null";
var destroyObjects = ds_list_create();
destroyObjects = scr_first_loading_screen_objects();
var listSize = ds_list_size(destroyObjects);
for(var i = 0; i < listSize; i++) {
    object = ds_list_find_value(destroyObjects, i);
    with(object) {
        instance_destroy();
    }
}
ds_list_destroy(destroyObjects);
scr_savegame();
ds_list_destroy(global.inventory);
with(obj_first_loading) {
    instance_destroy();
}
obj_screen_controller.menu_state = "main_menu";
obj_screen_controller.create_buttons = true;
room_goto(Menu);

