sprite_index = spr_player_bow;
//Gravity
scr_custom_gravity();
//Movement
var left = ord("A");
var right = ord("D");

image_xscale = 1;
if (mouse_x < x) {
	image_xscale = -1;
}

if (keyboard_check(right) && keyboard_check(left)) {
	scr_plr_stop_movement();
} else if (keyboard_check(right)) {
	scr_plr_move(1);
} else if (keyboard_check(left)) {
	scr_plr_move(-1);
} else {
	scr_plr_stop_movement();	
}

//Jump
scr_plr_jump();
/*sprite_index = spr_player_bow;
//Movement
if (keyboard_check(vk_right)) {
    hspeed = 1;
}
else if (keyboard_check(vk_left)) {
    hspeed = -1;
}
//Image_xscale
if (obj_plr_aim.x > x) {
    image_xscale = 1;
} else {
    image_xscale = -1;
}
//Stop
if (keyboard_check_released(vk_right) || keyboard_check_released(vk_left)) {
    hspeed = 0;
}
