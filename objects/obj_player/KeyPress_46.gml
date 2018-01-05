///Restart Room
//Enemies' stats NEEDED HERE??
global.enemy_stats1 = 0;
global.enemy_stats2 = 0;
global.enemy_stats3 = 0;
global.hudState = "null";
instance_destroy();
obj_screen_controller.viewAlpha = 1;
room_restart();

