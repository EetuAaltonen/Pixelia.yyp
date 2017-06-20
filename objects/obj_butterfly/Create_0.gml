image_speed = 0;
image_index = 0;

spriteChange = false;

flySpeed = 1;

sitTimeMin = 600;
sitTimeMax = 800;
state = "fly";

targetX = 0;
targetY = 0;
tempTargetY = 0;
previousTargetX = 0;
previousTargetY = 0;

flyLineChangeTime = 30;
flyLineChangeDestination = 1;

ramdomTargetXMin = -500;
ramdomTargetXMax = 500;
ramdomTargetYMin = -100;
ramdomTargetYMax = 100;

alarm[3] = flyLineChangeTime;
alarm[1] = 20;