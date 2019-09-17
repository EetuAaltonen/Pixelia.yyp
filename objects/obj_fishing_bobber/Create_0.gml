depth = Depth.PlayerAction;
depth_ = depth;

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

// Success text
successText = "";

// ???
area1Xscale = 10;
catchChange = 0;

// Loot / fishes
lootType = Loot.Material;
items = scr_get_loot_by_type(lootType);

alarm[3] = random_range(100, 200);