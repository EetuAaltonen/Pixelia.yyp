gHours += 1;

var sources = ds_list_create();
if (instance_exists(obj_source_controller)) {
	sources = obj_source_controller.sources;
}
var count = ds_list_size(sources);
var i;
var source;
for	(i = 0; i < count; i++) {
	source = ds_list_find_value(sources,i);
	source.alarm[1] -= scr_time_sec_to_alarm(scr_time_convert(1/global.clockTimeSpeed,"hh","ss"));
	if (source.alarm[1] < -1) {
		source.alarm[1] = -1;
		source.source = source.maxMaterials;
	}
}