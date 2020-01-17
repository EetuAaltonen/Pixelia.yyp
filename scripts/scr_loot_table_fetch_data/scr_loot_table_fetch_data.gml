/// @desc Fetch item data and return dropped loot
/// @param rangedLootTable - List of ranged loot table
/// @return ds_list - Loot drops

var rangedLootTable = argument0;

var itemData = scr_items_data();
var dataCount = array_length_1d(itemData);

var lootTableSize = ds_list_size(rangedLootTable);
var lootDrops = ds_list_create();

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