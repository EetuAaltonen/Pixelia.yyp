/*Datetime {
	yyyy; 0
	MM; 1
	dd; 2
	hh; 3
	mm; 4
	ss; 5
}*/
var value = argument0;
var section = argument1;
var dateTime = scr_time_ingame_now();
switch (section) {
	case "yyyy": { section = 0 } break;
	case "MM": { section = 1 } break;
	case "dd": { section = 2 } break;
	case "hh": { section = 3 } break;
	case "mm": { section = 4 } break;
	case "ss": { section = 5 } break;
}
dateTime[section] += value;
var i;
for (i = section; i > 0; i--) {
	switch (i) {
		//Months
		case 1: {
			if (dateTime[i] >= 12) {
				dateTime[i-1] += floor(dateTime[i]/12);
				dateTime[i] = dateTime[i]%12;
			}	
		} break;
		//Days
		case 2: { 
			if (dateTime[i] >= 30) {
				dateTime[i-1] += floor(dateTime[i]/30);
				dateTime[i] = dateTime[i]%30;
				
			}	
		} break;
		//Hours
		case 3: {
			if (dateTime[i] >= 24) {
				dateTime[i-1] += floor(dateTime[i]/24);
				dateTime[i] = dateTime[i]%24;
			}
		} break;
		//Minutes
		case 4: { 
			if (dateTime[i] >= 60) {
				dateTime[i-1] += floor(dateTime[i]/60);
				dateTime[i] = dateTime[i]%60;
			}	
		} break;
		//Seconds
		case 5: {
			if (dateTime[i] >= 60) {
				dateTime[i-1] += floor(dateTime[i]/60);
				dateTime[i] = dateTime[i]%60;
			}
		} break;
	}
}
return scr_time_to_string(dateTime[0], dateTime[1], dateTime[2], dateTime[3], dateTime[4], dateTime[5]);