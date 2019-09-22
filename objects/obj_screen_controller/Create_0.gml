depth = Depth.RoomTransition;
//GAME VERSION
global.gameVersion = "0.0.0.1";

// GUI
globalvar guiWidth;
guiWidth = 1080;
globalvar guiHeight;
guiHeight = 720;
globalvar guiWRatio;
guiWRatio = 2;
globalvar guiHRatio;
guiHRatio = 2;
view_set_wport(0, guiWidth);
view_set_hport(0, guiHeight);

//Resolution
reso_width = guiWidth;
reso_height = guiHeight;
//display_reset(0, true);
surface = 5; //1px = 5x5px
global.resWAspect = 2;
global.resHAspect = 2;
baseWResolution = guiWidth;
baseHResolution = guiHeight;
global.wResolution = baseWResolution;
global.hResolution = baseHResolution;
// TODO: Move to custom camera object
//scr_resolution(global.wResolution, global.hResolution);
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

//Can Close Hud State
global.hudCanClose = true;

sources = ds_list_create();