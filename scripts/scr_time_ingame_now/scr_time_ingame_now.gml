/*Datetime {
	yyyy; 0
	MM; 1
	dd; 2
	hh; 3
	mm; 4
	ss; 5
}*/
var dateTime = [];
if (instance_exists(obj_global_clock)) {
	var clock = obj_global_clock;
	dateTime[0] = clock.gYears;
	dateTime[1] = clock.gMonths;
	dateTime[2] = clock.gDays;
	dateTime[3] = clock.gHours;
	dateTime[4] = clock.gMinutes;
	dateTime[5] = clock.gSeconds;
}
return dateTime;