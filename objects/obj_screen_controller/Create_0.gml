depth = Depth.RoomTransition;
//GAME VERSION
global.gameVersion = "0.0.0.1";

surface = 5; //1px = 5x5px
// TODO: Move to custom camera object
//Check Resolution
resolutionLastRoom = "null";
//Menu
menuState = MenuActions.MainMenu;
createButtons = true;
//Saves
searchSaves = false;
Saves[0] = "no_saves";
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