/// @desc Initialize items for shop
/// @param target - Target list
/// @param source - Source list
/// @param clear - Bool for clearing the source
/// @return Void

var target = argument0;
var source = argument1;
var clear = argument2;

if (target == "null") {
	target = ds_list_create();	
} else {
	ds_list_clear(target);
}

ds_list_copy(target, source);

// Clear Source
if (clear) {
	ds_list_clear(source);
}