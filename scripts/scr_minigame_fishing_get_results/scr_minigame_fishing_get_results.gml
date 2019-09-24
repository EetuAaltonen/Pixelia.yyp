/// @description ???
/// @return void

var viewWCenter = guiWidth / 2;

if (viewWCenter + abs(bobberX) <= viewWCenter + ((bobberAreaWidth * area2Xscale) / 2)) {
	successText = "Great!";	
} else if (viewWCenter + abs(bobberX) <= viewWCenter + ((bobberAreaWidth * area1Xscale) / 2)) {
	successText = "Nice!";
} else {
	successText = "Bad luck!";	
}

alarm[5] = scr_time_sec_to_alarm(2);