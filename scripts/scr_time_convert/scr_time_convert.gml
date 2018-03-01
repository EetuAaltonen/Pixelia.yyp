var time = argument0;
var from = argument1;
var to = argument2;

if (from == "hh" && to == "ss") {
	return ((time)*60)*60;
}

if (from == "yyyy-MM-dd-hh-mm-ss" && to == "ss") {
	//Datetime: yyyy-MM-dd-hh-mm-ss
	var seconds = 0;
	//Years
	if (time[0] > 0) {
		seconds += time[0]*365*24*60*60;
	}
	//Months
	if (time[1] > 0) {
		seconds += time[1]*30*24*60*60;
	}
	//Days
	if (time[2] > 0) {
		seconds += time[2]*24*60*60;
	}
	//Hours
	if (time[3] > 0) {
		seconds += time[3]*60*60;
	}
	//Minutes
	if (time[4] > 0) {
		seconds += time[4]*60;
	}
	//Seconds
	if (time[5] > 0) {
		seconds += time[5];
	}
	return seconds;
}