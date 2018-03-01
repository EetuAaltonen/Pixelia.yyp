//Datetime: yyyy-MM-dd-hh-mm-ss
var yyyy = argument0;
var MM = argument1;
var dd = argument2;
var hh = argument3;
var mm = argument4;
var ss = argument5;
var dateTime = "";
	//Years
	if (yyyy < 10) {
		dateTime += "0";
	}
	if (yyyy < 100) {
		dateTime += "0";
	}
	if (yyyy < 100) {
		dateTime += "0";
	}
	dateTime += string(yyyy);
	dateTime += "-";
	//Months
	if (MM < 10) {
		dateTime += "0";
	}
	dateTime += string(MM);
	dateTime += "-";
	//Days
	if (dd < 10) {
		dateTime += "0";
	}
	dateTime += string(dd);
	dateTime += "-";
	//Hours
	if (hh < 10) {
		dateTime += "0";
	}
	dateTime += string(hh);
	dateTime += "-";
	//Minutes
	if (mm < 10) {
		dateTime += "0";
	}
	dateTime += string(mm);
	dateTime += "-";
	//Seconds
	if (ss < 10) {
		dateTime += "0";
	}
	dateTime += string(ss);
return dateTime;