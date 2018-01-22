//Clear Hud State
scr_close_global_hudstate();

//Save Game
scr_savegame();

//Delete created objects
var object;
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

//Clear Global Inventory
ds_list_destroy(global.inventory);

//Clear Global Stash
ds_list_destroy(global.inventory);

//Clear Temp Loot
ds_list_destroy(global.tempLoot);

//Remove First Loading Object
with(obj_first_loading) {
    instance_destroy();
}

//Set Menu Properties
obj_screen_controller.menuState = "mainMenu";
obj_screen_controller.createButtons = true;

//Go To Menu
room_goto(Menu);

