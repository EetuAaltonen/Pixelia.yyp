image_speed = 0;
depth_ = depth;
spriteUntouch = sprite_index;
spriteHit = spriteUntouch;//spr_source_oak_tree_hit;
spriteEmpty = spr_source_oak_tree_empty;
actionState = "woodcutting";
maxMaterials = 5;
source = maxMaterials;
respawnTime = 10;

cuttingWood = false;

material = "null";

xpReward = 2;

//Particles
scr_woodcutting_dust();

