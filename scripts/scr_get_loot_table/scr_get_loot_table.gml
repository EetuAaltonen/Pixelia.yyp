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
			[spr_iron_ore, irandom_range(0, 2)],
			[spr_iron_ingot, irandom_range(0, 4)],
			[spr_oak_log, irandom_range(1, 2)]
		]
	}break;
	case Loot.Equipment: {
		lootTable = [
			[spr_broken_helmet, 1], [spr_knight_helmet, 1]
		]
	}break;
}

return lootTable;