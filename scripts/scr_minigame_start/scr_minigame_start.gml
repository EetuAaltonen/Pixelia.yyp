var minigame = argument0;
var controller = obj_minigame_controller;

controller.minigame = minigame;
controller.minigameInitialized = false;
scr_set_global_hud_state(HudStates.Minigame);
scr_set_global_hud_action(HudActions.Null);