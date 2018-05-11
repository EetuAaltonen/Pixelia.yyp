/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
	requiredLevel; 9
}*/
var item = argument0;
var item2 = argument1;
return (item[0] == item2[0] &&
		item[1] == item2[1] &&
		item[2] == item2[2] &&
		item[4] == item2[4] &&
		item[6] == item2[6] &&
		item[7] == item2[7] &&
		item[8] == item2[8]);