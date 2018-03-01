gHours += 1;

var sources = scr_source_find_exists();
var count = array_length_1d(sources);
var i;
var source;
if (array_length_1d(sources) > 0) {
	for	(i = 0; i < count; i++) {
		source = sources[i];
		source.alarm[1] -= scr_time_sec_to_alarm(scr_time_convert(1/global.clockTimeSpeed,"hh","ss"));
		if (source.alarm[1] < -1) {
			source.alarm[1] = -1;
			source.source = source.maxMaterials;
		}
	}
}