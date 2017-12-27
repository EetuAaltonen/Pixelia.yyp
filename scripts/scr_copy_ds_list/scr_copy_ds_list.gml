var target = argument0;
var source = argument1;
var clear = argument2;
var listSize = ds_list_size(source);
var data = "";
var i;

if (target == "null") {
	target = ds_list_create();	
}
ds_list_clear(target);

ds_list_copy(target, source);

/*for (i = 0; i < listSize; i++) {
	data = ds_list_find_value(source, i);
	ds_list_add(target, data);
}*/

//Clear Source
if (clear) {
	ds_list_clear(source);
}