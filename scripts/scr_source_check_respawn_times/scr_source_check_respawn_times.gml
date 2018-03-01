/*Source {
	object; 0
	x; 1
	y; 2
	respawnDateTime; 3
	respawnTime; 4
	source; 5
}*/
if (file_exists("Sources.ini")) {
	ini_open("Sources.ini");
	if (ini_section_exists(global.save_file)) {
		var sources = scr_source_find_exists();
		var count = array_length_1d(sources);
		//Inventory
		var foundSources = ds_list_create();
		var data = ini_read_string(global.save_file, room_get_name(room), "");
		if (data != "") {
			ds_list_read(foundSources, data);
			var listSize = ds_list_size(foundSources);
			if (listSize > 0) {
				var i, j, k;
				var source;
				var clock = obj_global_clock;
				var dateTime = scr_time_to_string(clock.gYears,clock.gMonths,clock.gDays,clock.gHours,clock.gMinutes,clock.gSeconds);
				var timeDifference = 0;
				for (i = 0; i < count; i++) {
					for (j = 0; j < listSize; j++) {
						data = ds_list_find_value(foundSources, j);
						source = sources[i];
						if (point_distance(data[1], data[2], source.x, source.y) == 0) {
							if (scr_time_compare(dateTime,data[3],"<")) {
								//Do Respawn Calculation
								source.respawnDateTime = data[3];
								source.alarm[1] = scr_time_sec_to_alarm(scr_time_difference(data[3],dateTime,"ss")/global.clockTimeSpeed);
								source.source = data[5];
							}
							break;
						}
					}
				}
			}
		}
		ds_list_destroy(foundSources);
	}
	ini_close();
}