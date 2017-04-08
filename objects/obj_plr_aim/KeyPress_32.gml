dir_now := point_direction(obj_player.x,obj_player.y,x,y);
dir_new := (dir_now + aim_speed + 360)mod(360);
x := lengthdir_x(-50,dir_new) + obj_player.x;

