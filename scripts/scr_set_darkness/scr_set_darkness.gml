var incDark = 0.08;
var mSun = 5;
var nSun = 19;
var midNSun = 24;
if (global.hours >= nSun) {
	global.darkness += incDark;
} else if (global.hours >= 0 && global.hours < mSun) {
	global.darkness -= incDark;
} else {
	global.darkness = 0;
}