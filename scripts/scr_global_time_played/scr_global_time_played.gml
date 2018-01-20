milliseconds += (delta_time*0.000001)*room_speed;
if (milliseconds >= 60) {
	milliseconds -= 60;
	seconds += 1;
}

if (seconds >= 60) {
	seconds -= 60;
	minutes += 1;
}

if (minutes >= 60) {
	minutes = 0;
	hours += 1;
}

if (hours >= 24) {
	hours = 0;
	days += 1;
}