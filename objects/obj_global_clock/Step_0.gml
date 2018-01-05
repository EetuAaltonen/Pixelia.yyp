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

if (days >= 30) {
	days = 0;
	months += 1;
}

if (months >= 12) {
	months = 1;
	years += 1;
}