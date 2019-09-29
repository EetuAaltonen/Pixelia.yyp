// First loading screen objects
var Objects = ds_list_create();
// Clock
ds_list_add(Objects, obj_global_clock);
// Player Combat Alarms
ds_list_add(Objects, obj_plr_combat_alarms);
// Inventory
ds_list_add(Objects, obj_inventory_controller);
// Quest
ds_list_add(Objects, obj_quest_controller);
// Map
ds_list_add(Objects, obj_world_map_controller);
// Dialogs
ds_list_add(Objects, obj_dialog_controller);
// Minigames
ds_list_add(Objects, obj_minigame_controller);
// Toaster
ds_list_add(Objects, obj_toaster_controller);
// Statistics
ds_list_add(Objects, obj_statistics_controller);
// Hotbar
ds_list_add(Objects, obj_hotbar_controller);
// Collectable objects target
// TODO: Really need for collectable coins and potions?
// ds_list_add(Objects, obj_money_target);
// ds_list_add(Objects, obj_potion_target);
// Sources
ds_list_add(Objects, obj_source_controller);
// Particles
ds_list_add(Objects, obj_part_controller_elemental);

return Objects;
