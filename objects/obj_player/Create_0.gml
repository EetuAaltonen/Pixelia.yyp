//Depth
depth = -200;
cooldown = 1;
///Spawn and Create
image_speed = 0;
x = obj_spawner.x;
y = obj_spawner.y;

//Movement
acceleration = 0.2;

//Drop coins after death
coin_drop = 0;

//Hitbox
instance_create(x, y, obj_plr_hitbox);

//Quest pointer
instance_create(x, y, obj_plr_pointer);

//acceleration = 0; //???
//Highlight
highlight = false;

//Slice
cooldown_slice = 1;
slice = 0;

//Shield
cooldown_shield = 1;

//Action state
action_state = "null";

//Jump
can_jump = 1;

//Roll
roll = 0;

//Cooldown ?
cooldown = 1;

scr_current_room();

if (instance_exists(obj_screen_controller))
{
    obj_screen_controller.start = true;
}

elementalEffect = "null";