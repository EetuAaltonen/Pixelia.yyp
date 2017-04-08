//Wall collisions and apply movement

//Horizonal collisions
if (place_meeting(x + pet_dx, y, obj_grass || obj_stone))
{
    while(!place_meeting(x, y + sign(pet_dy), obj_grass || obj_stone)) y += sign(pet_dy);
    pet_dy = 0;
}

//Apply movement and gravity
x += pet_dx;
y += pet_dy;

pet_dy += pet_grav

//Movement

//Catch up horizontally

player_xdistance = obj_player.x - x;

if (pet_out_of_view)
{
    x = obj_player.x - obj_player.sprite_width;
    y = obj_player.y;
    pet_dy = 0;
    
    pet_out_of_view = false;
}
else if (abs(player_xdistance) > 2 * obj_player.sprite_width)
{
    if (place_meeting(x, y + 1, obj_stone || obj_grass)) pet_dy = pet_jump_speed * -1;
    pet_dx = pet_speed * sign(player_xdistance) * 1.5;
}
else if (abs(player_xdistance) > 1.5 * obj_player.sprite_width)
{
    if (place_meeting(x, y + 1, obj_stone || obj_grass)) pet_dy = pet_jump_speed * -1;
    pet_dx = pet_speed * sign(player_xdistance);
}
else pet_dy = 0;

//Catch up vertically
player_ydistance = y - obj_player.y;

if (player_ydistance > 1.5 * obj_player.sprite_height)
{
    if (place_meeting(x, y + 1, obj_stone || obj_grass)) pet_dy = obj_player.vspeed * -1;
}

//Fire on enemies

enemy_in_range = collision_circle(x, y, 200, obj_bat, false, true);

if (enemy_in_range && (alarm[0] <=0))
{
    nearest_enemy = instance_nearest(x, y, obj_bat);
    fire_direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
    
    with instance_create(obj_pet.x, obj_pet.y, obj_pet_ammo)
    {
        speed = 20;
        direction = obj_pet.fire_direction;
        image_angle = obj_pet.fire_direction;
    }

        alarm[0] = room_speed * 0.25;
}

