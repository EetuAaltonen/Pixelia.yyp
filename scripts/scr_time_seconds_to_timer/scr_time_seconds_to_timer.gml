var seconds = argument0;
var format = argument1;
var mark = argument2;
var dateTime = "0";
if (seconds > 0) {
	dateTime = "";
	var h = floor(seconds / 3600);
	var m = floor(seconds % 3600 / 60);
	var s = floor(seconds % 3600 % 60);
	if (string_pos("hh", format) != 0) {
		if (h < 10) {
			dateTime += "0";
		}
		dateTime += string(h);
		if (mark == "") {
			dateTime += "h ";
		}
	}
	if (string_pos("mm", format) != 0) {
		if (m < 10) {
			dateTime += "0";
		}
		dateTime += string(m);
		if (mark == "") {
			dateTime += "min ";
		}
	}
	if (string_pos("ss", format) != 0) {
		if (s < 10) {
			dateTime += "0";
		}
		dateTime += string(s);
		if (mark == "") {
			dateTime += "s ";
		}
	}
}
return dateTime;