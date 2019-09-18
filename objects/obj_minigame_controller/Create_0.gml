depth = Depth.Dialog;

// Fishing
fishingState = undefined;
minCatchTime = scr_time_sec_to_alarm(2);
maxCatchTime = scr_time_sec_to_alarm(5);
bobberX = 20;
bobberSpeed = 1;
bobberDirection = 1;
bobberRotateDirection = 1;
bobberRotateSpeed = 2;
bobberTempImageAngle = image_angle;
imageAngle = bobberTempImageAngle;

// Success text
successText = "";

// ???
area1Xscale = 10;

// Loot
items = ds_list_create();

// Type
minigame = "null";
// Initialize
minigameInitialized = false;

// Woodcutting
forceScale = 0;
forceAlpha = 0.9;
forceAmount = 2;
maxScale = 137; //Sprite Height spr_minigame_woodcutting_frame
forceDirect = "up";
tempDirect = forceDirect;
forceSpeed = 0.01;
waitTime = 1;
targetY = "null";
targetHeight = 20;
drawMargin = 50;