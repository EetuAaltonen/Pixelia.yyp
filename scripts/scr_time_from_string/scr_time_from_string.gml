var dateTime = argument0;
return [
	real(scr_time_get_section_from_string(dateTime, "yyyy")),
	real(scr_time_get_section_from_string(dateTime, "MM")),
	real(scr_time_get_section_from_string(dateTime, "dd")),
	real(scr_time_get_section_from_string(dateTime, "hh")),
	real(scr_time_get_section_from_string(dateTime, "mm")),
	real(scr_time_get_section_from_string(dateTime, "ss")),
];