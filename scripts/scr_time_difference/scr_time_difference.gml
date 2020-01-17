//Datetime: yyyy-MM-dd-hh-mm-ss
var dateTime1 = argument0;
var dateTime2 = argument1;
var returnFormat = argument2;
var difference = [0,0,0,0,0,0];
var tArr1 = scr_time_from_string(dateTime1);
var tArr2 = scr_time_from_string(dateTime2);

var i;
for (i = 5; i >= 0; i--) {
	switch (i) {
		//Years
		case 0: {
			if (difference[i] < 0) {
				show_message("DateTimes are wrong way:" + dateTime1 + " < " + dateTime2);
			}
		} break;
		//Months
		case 1: {
			if (tArr1[i] - tArr2[i] >= 0) {
				difference[i] += tArr1[i] - tArr2[i];
			} else {
				difference[i] += 12+(tArr1[i] - tArr2[i]);
				tArr1[i-1] -= 1;
			}
		} break;
		//Days
		case 2: { 
			if (tArr1[i] - tArr2[i] >= 0) {
				difference[i] += tArr1[i] - tArr2[i];
			} else {
				difference[i] += 30+(tArr1[i] - tArr2[i]);
				tArr1[i-1] -= 1;
			}	
		} break;
		//Hours
		case 3: { 
			if (tArr1[i] - tArr2[i] >= 0) {
				difference[i] += tArr1[i] - tArr2[i];
			} else {
				difference[i] += 24+(tArr1[i] - tArr2[i]);
				tArr1[i-1] -= 1;
			}	
		} break;
		default: {
			//Minutes
			//Seconds
			if (tArr1[i] - tArr2[i] >= 0) {
				difference[i] += tArr1[i] - tArr2[i];
			} else {
				difference[i] += 60+(tArr1[i] - tArr2[i]);
				tArr1[i-1] -= 1;
			}
		}
	}
}
//show_message("Difference: " + string(difference[0]) + "-" + string(difference[1]) + "-" + string(difference[2]) + "-" + string(difference[3]) + "-" + string(difference[4]) + "-" + string(difference[5]));
return scr_time_convert(difference, "yyyy-MM-dd-hh-mm-ss", "ss");