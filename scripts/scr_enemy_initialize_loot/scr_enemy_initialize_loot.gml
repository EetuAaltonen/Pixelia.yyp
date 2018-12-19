/*Data {
	enemy; 0
	loots; 1
}*/

/*Loot {
	name; 0
	count; 1
	rarity; 2
}*/

//scr_item_info_struct()

var name = argument0;
var listOfLoots = scr_enemy_loot_list();
var arraySize = array_length_1d(listOfLoots);
var lootCount;
var loots;
var i, j;

for (i = 0; i < arraySize; i++) {
	loots = listOfLoots[i];
	if (string_pos(name, loots[0]) != 0) {
		loots = loots[1];
		var lootCount = array_length_1d(loots);
		var loot;
		var count;
		var data;
		for (j = 0; j < lootCount; j++) {
			loot = loots[j];
			var data = scr_item_search_data(loot[0], "name");
			//Change Count To Data
			data[3] = loot[1];
			//Replace Loot Name By Data
			loot[0] = data;
			//Replace New Values To Loots
			loots[j] = loot;
		}
		return loots;
	}
}
return ["", []];