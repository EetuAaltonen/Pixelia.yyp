var target = argument0;
var source = argument1;
var clear = argument2; //True or False

if (target == "null") {
	target = ds_list_create();	
} else {
	ds_list_clear(target);
}

ds_list_copy(target, source);

//Clear Source
if (clear) {
	ds_list_clear(source);
}