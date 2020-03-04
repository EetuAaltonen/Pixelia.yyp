depth = Depth.RoomTransition;

// TODO: Move to custom camera object
//Pause
background_temp = "";
pause = false;
unfocus = false;

//Room change
targetRoom = "null";
currentRoom = "null";
viewAlpha = 1;
drawViewAlpha = false;
transitionAmount = 0.1;
transitionSpeed = 0.06;
transitionWaitTime = 0.5;

//Darkness Effect
darknessEffect = false;
darknessAlpha = 0;
darknessMax = 0.6;

// Can Toggle Hud State
global.hudCanToggle = true;

sources = ds_list_create();