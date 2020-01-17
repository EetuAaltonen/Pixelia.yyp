/// @desc Fetch item data and return dropped loot
/// @param rangedLootTable - Array of ranged loot table
/// @param lootDrops - List of previous loot drops

/// @return ds_list - Loot drops

var rangedLootTable = argument0;
var lootDrops = argument1;

var itemData = scr_items_data();
var dataCount = array_length_1d(itemData);

var lootTableSize = array_length_1d(rangedLootTable);

var i, j, tempLoot, tempRange, tempData;

for (i = 0; i < lootTableSize; i++) {
	tempLoot = rangedLootTable[i];
	tempRange = tempLoot[LootDrop.Chance];
	if (tempRange[LootRange.DropCount] > 0) {
		for (j = 0; j < dataCount; j++) {
			tempData = itemData[j];
			if (tempLoot[LootDrop.Sprite] == tempData[ItemData.Sprite]) {
				//Set new count
				tempData[ItemData.Count] = tempRange[LootRange.DropCount];
				ds_list_add(lootDrops, tempData);
				j = (dataCount - 1);
			}
		}
	}
}

return lootDrops;