//Datetime: yyyy-MM-dd-hh-mm-ss
var datetime = argument0;
var section = argument1;
var value = 0;
switch(section) {
	case "yyyy": { return string_char_at(datetime,1) +
						  string_char_at(datetime,2) +
						  string_char_at(datetime,3) +
						  string_char_at(datetime,4) }break;
	case "MM": { return string_char_at(datetime,6) + string_char_at(datetime,7) }break;
	case "dd": { return string_char_at(datetime,9) + string_char_at(datetime,10) }break;
	case "hh": { return string_char_at(datetime,12) + string_char_at(datetime,13) }break;
	case "mm": { return string_char_at(datetime,15) + string_char_at(datetime,16) }break;
	case "ss": { return string_char_at(datetime,18) + string_char_at(datetime,19) }break;
}
return value;