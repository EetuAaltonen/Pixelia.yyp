/// @description Delta timer and global clock
global.delta = 60/1000000*delta_time;

global.timerSeconds += ((delta_time*0.000001)*room_speed)*global.delta;

if ((global.timerSeconds/100 < 60 && global.timerSeconds/100 > 59.9) || global.timerSeconds/100 > 60) {
	global.timerSeconds = 0;
	global.timerMinutes += 1;
}

if (global.timerMinutes == 60) {
	global.timerMinutes = 0;
	global.timerHours += 1;
}