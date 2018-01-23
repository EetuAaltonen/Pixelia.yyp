depth = -1000;
//Resolution
reso_width = 1920;
reso_height = 1080;
//display_reset(0, true);
surface = 5; //1px = 5x5px
global.resWAspect = 1;
global.resHAspect = 1;
scr_resolution(1280, 720);
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
currenRoom = "null";
viewAlpha = 1;
drawViewAlpha = false;
transitionAmount = 0.1;
transitionSpeed = 0.06;
transitionWaitTime = 0.5;

//Darkness Effect
darknessEffect = false;
darknessAlpha = 0;
darknessMax = 0.7;