var sources = [obj_source_ore_parent, obj_source_oak_tree];
var arraySize = array_length_1d(sources);
var i, j, indx = 0;
var source;
var count;
var objectArray = [];
for (i = 0; i < arraySize; i++) {
	source = sources[i];
	if (instance_exists(source)) {
		count = instance_number(source);
		for (j = 0; j < count; j++) {
			objectArray[indx++] = instance_find(source, j);	
		}
	}
}
return objectArray;