//GAME VERSION
global.gameVersion = "0.0.0.1";

depth = -1000;
//Resolution
reso_width = 1920;
reso_height = 1080;
//display_reset(0, true);
surface = 5; //1px = 5x5px
global.resWAspect = 2;
global.resHAspect = 2;
baseWResolution = 1280;
baseHResolution = 720;
global.wResolution = baseWResolution;
global.hResolution = baseHResolution;
scr_resolution(global.wResolution, global.hResolution);
//Check Resolution
resolutionLastRoom = "null";
//Menu
menuState = "mainMenu";
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

//Can Close Hud State
global.hudCanClose = true;

sources = ds_list_create();