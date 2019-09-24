depth = Depth.Dialog;

// Fishing
fishingState = undefined;
minCatchTime = scr_time_sec_to_alarm(2);
maxCatchTime = scr_time_sec_to_alarm(5);

bobberAreaHeight = 30;
bobberAreaWidth = 600;

bobberX = 20;
bobberScale = 4;
bobberMoveTimer = 0;
bobberSpeed = 5; // [10...0] lower is faster
bobberSteps = 4;
bobberDirection = 1;

bobberRotateDirection = 1;
bobberRotateTimer = 0;
bobberRotateSpeed = 10;
bobberRotateSteps = 2;
bobberMaxAngle = 35;
bobberTempImageAngle = image_angle;
imageAngle = bobberTempImageAngle;


// ???
area1Xscale = 1 / 3;
area2Xscale = 1 / 8;

// Success text
successText = "";

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