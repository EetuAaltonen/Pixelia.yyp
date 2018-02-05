x = (instance_nearest(x, y, obj_ladder).x);
hspeed = 0;

image_speed = 0;
sprite_index = spr_player;
image_index = 0;

var keyUp = ord("W");
var keyDown = ord("S");
var keyLeft = ord("A");
var keyRight = ord("D");

/*if (!canExitLadder) {
	if (keyboard_check_released(keyLeft) || keyboard_check_released(keyRight)) {
		canExitLadder = true;
	}
} else if (canExitLadder) {*/
	if (keyboard_check_pressed(keyLeft) || keyboard_check_pressed(keyRight)) {
	    scr_plr_set_action_state_null();
	}
//}

if (!keyboard_check(keyUp) && !keyboard_check(keyDown) ||
	keyboard_check(keyUp) && keyboard_check(keyDown)) {
	vspeed = 0;
} else if (keyboard_check(keyUp)) {
    vspeed = -2;
    x = (instance_nearest(x, y, obj_ladder).x)   
} else if (keyboard_check(keyDown)) {
    vspeed = 2;
    x = (instance_nearest(x, y, obj_ladder).x) 
}