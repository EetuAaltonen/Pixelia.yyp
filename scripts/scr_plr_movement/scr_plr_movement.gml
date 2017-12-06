if (keyboard_check(vk_right) && keyboard_check(vk_left)) {
	scr_plr_stop_movement();
} else if (keyboard_check(vk_right)) {
	image_xscale = 1;
	scr_plr_move();
} else if (keyboard_check(vk_left)) {
	image_xscale = -1;
	scr_plr_move();
} else {
	scr_plr_stop_movement();	
}