//Roll

if (sprite_index = spr_plr_roll)
{
    global.stamina -= 3;
}
hspeed = 0;
global.damage = 1;
roll = 0;
image_speed = 0;
image_alpha = 1;
sprite_index = spr_plr_crouch;
sprite_index = spr_player;