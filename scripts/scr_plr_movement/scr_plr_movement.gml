var left = ord("A");
var right = ord("D");;

if (keyboard_check(right) && keyboard_check(left)) {
	scr_plr_stop_movement();
} else if (keyboard_check(right)) {
	image_xscale = 1;
	scr_plr_move(image_xscale);
} else if (keyboard_check(left)) {
	image_xscale = -1;
	scr_plr_move(image_xscale);
} else {
	scr_plr_stop_movement();	
}