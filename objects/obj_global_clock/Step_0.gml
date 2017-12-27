seconds += (delta_time*0.000001)*room_speed;
if (seconds >= 60) {
	seconds -= 60;
	minutes += 1;
}

if (minutes >= 60) {
	minutes -=60;
	hours += 1;
}

if (hours >= 24) {
	hours = 0;
}