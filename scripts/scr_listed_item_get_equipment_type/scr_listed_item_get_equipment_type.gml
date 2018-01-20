/*equipments {
	helmet, 0
	amulet, 1
	armor, 2
	gloves, 3
	primary weapon, 4
	secondary weapon, 5
	ring, 6
	belt, 7
	boots 8
}*/

var equipmentTypes = [
	"helmet",
	"amulet",
	"armor",
	"gloves",
	"priweapon",
	"secweapon",
	"ring",
	"belt",
	"boots"
];

var item = argument0;
var slotCount = array_length_1d(equipmentTypes);
var i;
for (i = 0; i < slotCount; i++) {
	if (string_pos(equipmentTypes[i], item[2]) != 0) {
		return i;
	}
}
show_message(item[1] + " have no equipment type!");	
return -1;