var effect = argument0;
var data;
var i;
var listSize = ds_list_size(global.buffs);

for (i = 0; i < listSize; i++) {
	data = ds_list_find_value(global.buffs, i);
	if (data[0] == effect) {
		return true;
	}
}
return false;