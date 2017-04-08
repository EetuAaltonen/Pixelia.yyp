///Create attributes
inWater = false;
catchFish = false;
toPlayer = false;

bobberX = 20;
bobberSpeed = 1;
bobberDirection = 1;
bobberRotateDirection = 1;
bobberRotateSpeed = 2;
bobberTempImageAngle = image_angle;
imageAngle = bobberTempImageAngle;

//Success text
successText = "";

viewXCenter = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2;
viewYCenter = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2;

//
area1Xscale = 10;
catchChange = 0;

//Inventory info
typeId = 4;
itemId = random_range(1,3);

depth_ = depth;
alarm[3] = random_range(100, 200);

