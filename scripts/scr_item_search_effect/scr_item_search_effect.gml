/*Effect {
	key; 0
	name; 1
}*/

var value = argument0;
var type = argument1;
var effects = scr_item_effects();
var data;
var arraySize = array_length_1d(effects);
var i;

for (i = 0; i < arraySize; i++) {
	data = effects[i];
	switch (type) {
		case "key": { if (data[0] == value) {return data[1];} }break;
		case "name": { if (data[1] == value) {return data[0];} }break;
	}
}
show_message("Effect: " + string(value) + " : " + type + " not found!");
return;