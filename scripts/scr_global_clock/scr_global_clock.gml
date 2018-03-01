gMilliseconds += (delta_time*(0.000001*global.clockTimeSpeed))*room_speed;
if (gMilliseconds >= 60) {
	gMilliseconds -= 60;
	gSeconds += 1;
}

if (gSeconds >= 60) {
	gSeconds -= 60;
	gMinutes += 1;
}

if (gMinutes >= 60) {
	gMinutes = 0;
	gHours += 1;
}

if (gHours >= 24) {
	gHours = 0;
	gDays += 1;
}

if (gDays >= 30) {
	gDays = 1;
	gMonths += 1;
}

if (gMonths >= 12) {
	gMonths = 1;
	gYears += 1;
}