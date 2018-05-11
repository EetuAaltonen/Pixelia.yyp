/*Source {
	object; 0
	x; 1
	y; 2
	respawnDateTime; 3
	respawnTime; 4
	source; 5
}*/

var sources = obj_source_controller.sources;
if (self == obj_source_controller) {
	sources = self.sources;
}
var count = ds_list_size(sources);
var data = ds_list_create();
var source;
var i;

for (i = 0; i < count; i++) {
	source = ds_list_find_value(sources,i);
	if (source.respawnDateTime != "" || source.source == source.maxMaterials) {
		ds_list_add(data, [object_get_name(source.object_index), source.x, source.y, source.respawnDateTime, source.respawnTime, source.source]);
	}
}

ini_open("RespawnTimes.ini");
if (ds_list_size(data) > 0) {
	ini_write_string(global.save_file, room_get_name(room), ds_list_write(data));
} else {
	if (ini_key_exists(global.save_file, room_get_name(room))) {
		ini_section_delete(room_get_name(room));
	}
}
ini_close();

ds_list_destroy(data);

//Reset Source List After Saving
ds_list_clear(obj_source_controller.sources);