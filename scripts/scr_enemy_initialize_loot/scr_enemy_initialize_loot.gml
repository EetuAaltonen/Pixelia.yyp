/*Loot {
	enemies; 0
	loot; 1
	count; 2
	rarity; 3
}*/

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
}*/

var name = argument0;
var loots = scr_enemy_loot_list();
var count = array_length_1d(loots);
var i;
var loot;
for (i = 0; i < count; i++) {
	loot = loots[i];
	if (string_pos(name, loot[0]) != 0) {
		if (loot[1] != "null") {
			var itemCount = loot[2];
			var data = scr_item_search_data(loot[1], "name");
			data[3] = itemCount;
			loot[1] = data;
			return loot;
		}
	}
}
//show_message("Loot for " + name + " not found!");
return "";