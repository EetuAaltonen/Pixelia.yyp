//Depth
depth = -200;
cooldown = 1;

sprite_index = spr_player;
image_speed = 0;

//Spawn
spawning = true;

//Movement
acceleration = 0.2;

//Hitbox
instance_create(x, y, obj_plr_hitbox);

//Quest pointer
instance_create(x, y, obj_plr_pointer);

//acceleration = 0; //???
//Highlight
highlight = false;

//Target
enemy = false;

//TempMask
tempMask = spr_player;

//Slice
sliceCooldown = false;
slice = 0;
sliceStreak = 0;
tempHSpeed = 0;
sliceCost = 5;
sliceRam = false;

//Shield
cooldown_shield = 1;

//Action state
action_state = "null";
actionState = "null";

//Jump
can_jump = 1;

//Roll
roll = 0;

//Cooldown ?
cooldown = 1;

scr_current_room();

if (instance_exists(obj_screen_controller)) {
    obj_screen_controller.start = true;
}

elementalEffect = "null";