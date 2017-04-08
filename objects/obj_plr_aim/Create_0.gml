//Aiming
aim_speed = 0;

dir_now := point_direction(obj_player.x,obj_player.y,x,y);
dir_new := (dir_now + aim_speed + 360)mod(360);
x := lengthdir_x(50 * obj_player.image_xscale,dir_new) + obj_player.x;
y := lengthdir_y(50 * obj_player.image_xscale,dir_new) + obj_player.y;
image_speed = 0;
image_index = 0;
image_xscale = 1;
shoot = false;

