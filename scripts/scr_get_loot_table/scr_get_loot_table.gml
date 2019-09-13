/*
* @param lootType string
*
* @return lootTable array
*/

//scr_items_data();

/*
Loot {
	sprite; 0
	count; 1
}
*/

var lootType = argument0;
var lootTable = [];

switch (lootType) {
	case Loot.Material: {
		lootTable = [
			[spr_iron_ore, 5], [spr_iron_ingot, 2]
		]
	}break;
	case Loot.Equipment: {
		lootTable = [
			[spr_broken_helmet, 1], [spr_knight_helmet, 1]
		]
	}break;
}

return lootTable;