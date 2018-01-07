image_speed = 0;
depth_ = depth;
spriteUntouch = sprite_index;
spriteHit = spriteUntouch;//spr_source_iron_ore_hit;
spriteEmpty = spr_source_iron_ore_empty;
actionState = "mining";
maxMaterials = 5;
source = maxMaterials;
respawnTime = 10;

mining = false;

material = "null";

xpReward = 2;

//Particles
scr_woodcutting_dust();