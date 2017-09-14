if (global.hours == -1) {
	global.hours = 6;
} else {
	if (global.hours == 24) {
		global.hours = 0;
	} else {
		global.hours += 0.5;
	}
}
scr_set_darkness();
alarm[1] = (room_speed*1)*global.delta*0.5;
//show_message(global.hours);