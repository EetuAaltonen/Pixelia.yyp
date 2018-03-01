var dateTime = argument0;
return real(scr_time_get_section_from_string(dateTime, "yyyy") +
			scr_time_get_section_from_string(dateTime, "MM") +
			scr_time_get_section_from_string(dateTime, "dd") +
			scr_time_get_section_from_string(dateTime, "hh") +
			scr_time_get_section_from_string(dateTime, "mm") +
			scr_time_get_section_from_string(dateTime, "ss"));