var effect = argument0;
var i, data;
var buffsCount = ds_list_size(global.buffs);
	
for (i = 0; i < buffsCount; i++) {
	data = ds_list_find_value(global.buffs, i);
	if (effect == data[0]) {
		ds_list_delete(global.buffs, i);
		break;
	} 
}