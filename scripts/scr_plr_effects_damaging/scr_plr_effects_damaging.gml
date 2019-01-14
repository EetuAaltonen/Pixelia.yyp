/*Effect {
	name; 0
	amount; 1
	duration; 2
}*/

var buff = argument0;

if (buff[0] == "poison" ||
	buff[0] == "bleed" ||
	buff[0] == "fire" ||
	buff[0] == "freeze") {
	global.healthPoints -= buff[1];	
}