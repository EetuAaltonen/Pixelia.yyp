var dateTime1 = argument0;
var dateTime2 = argument1;
var method = argument2;
switch (method) {
	case "<": { return (scr_time_to_real(dateTime1) < scr_time_to_real(dateTime2)); }break;
	case "<=": { return (scr_time_to_real(dateTime1) <= scr_time_to_real(dateTime2)); }break;
	case ">": { return (scr_time_to_real(dateTime1) > scr_time_to_real(dateTime2)); }break;
	case ">=": { return (scr_time_to_real(dateTime1) >= scr_time_to_real(dateTime2)); }break;
	case "==": { return (scr_time_to_real(dateTime1) == scr_time_to_real(dateTime2)); }break;
}