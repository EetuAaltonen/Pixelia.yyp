/*equipments {
	helmet, 0
	amulet, 1
	armor, 2
	primary weapon, 3
	secondary weapon, 4
	gloves, 5
	ring, 6
	belt, 7
	boots 8
}*/

var equipmentTypes = [
	"helmet",
	"amulet",
	"gloves",
	"ring",
	"armor",
	"priweapon",
	"secweapon",
	"belt",
	"boots"
];

var item = argument0;
var slotCount = array_length_1d(equipmentTypes);
var i, j, char;
var category = "";

//Item type to array
for (i = 2; i > 0; i++ ) {
	char = string_char_at(item[ItemData.Type], i);
	if (char == "]") {
		break;	
	}
	if (char == ",") {
		for (j = 0; j < slotCount; j++) {
			if (category == equipmentTypes[j]) {
				return j;
			}
		}
		category = "";
	} else {
		category += char;
	}
}
show_message(item[1] + " have no equipment type!");	
return -1;