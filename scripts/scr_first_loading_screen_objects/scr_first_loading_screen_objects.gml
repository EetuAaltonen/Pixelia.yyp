//First loading screen objects
var Objects = ds_list_create();
//Inventory
ds_list_add(Objects, obj_inventory_controller);
//Crafting
ds_list_add(Objects, obj_crafting_controller);
//Quest
ds_list_add(Objects, obj_quest_controller);
//Map
ds_list_add(Objects, obj_world_map_controller);
//Dialogs
ds_list_add(Objects, obj_dialog_controller);
//Stats
ds_list_add(Objects, obj_stats_meter);
//Collectable objects target
ds_list_add(Objects, obj_money_target);
ds_list_add(Objects, obj_potion_target);
//Skill hotbar icons
/*Object[15] = obj_skill_A;
Object[16] = obj_skill_Q;
Object[17] = obj_skill_W;*/
//Home village
//Object[18] = obj_home_village_controller;

return Objects;
