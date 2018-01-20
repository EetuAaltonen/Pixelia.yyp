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

var type = argument0;
var listSize = array_length_1d(equipmentTypes);
var i;
for (i = 0; i < listSize; i++) {
	if (type == equipmentTypes[i]) {
		return i;
	}
}	
return -1;