//Resolution
reso_width = 1024;
reso_height = 768;
display_reset(0, true);
surface = 5; //1px = 5x5px
scr_resolution();
//Menu
menu_state = "main_menu";
create_buttons = true;
//Saves
read_saves = false;
Saves[0] = "no_saves";
//Pause
background_temp = "";
pause = false;
//Room change
current_room = false;
target_room = false;
alpha = 0;
brightness = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
start = false;
transition_speed = 5;

