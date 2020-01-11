/// @desc Calculate loot drops with specified loot category
/// @param lootConfigs - Array of loot categories and max loot counts
/// @return ds_list - Loots

var lootConfigs = argument0;

var lootDrops = ds_list_create();

var lootTables = scr_loot_tables_init(lootConfigs);
var lootTableCount = ds_list_size(lootTables);

var tempLootTable, lootTableSize;
var rangedLootTableConfig, rangedLootTable;
var maxLootCount, totalProbability
var i, j, k;

for (i = 0; i < lootTableCount; i++) {
	tempLootTable = ds_list_find_value(lootTables, i);
	
	rangedLootTableConfig = scr_loot_table_assing_range(tempLootTable[0]);
	maxLootCount = tempLootTable[LootConfig.MaxLootCount];
	rangedLootTable = rangedLootTableConfig[RangedLootTable.LootTable];
	totalProbability = rangedLootTableConfig[RangedLootTable.TotalProbability];
	
	lootTableSize = array_length_1d(rangedLootTable);
	
	var tempLoot, tempRange, tempData;
	var rng;
	
	// Calculate loot drop counts
	while (maxLootCount > 0) {
		rng = irandom_range(1, totalProbability);
		for (j = 0; j < lootTableSize; j++) {
			tempLoot = rangedLootTable[j];
			tempRange = tempLoot[LootDrop.Chance];
			if ((rng >= tempRange[LootRange.RangeMin] &&
				 rng <= tempRange[LootRange.RangeMax]) ||
				 tempRange[LootRange.RangeMax] == -1) {
				// Check if the loot drop is not an unlucky miss
				if (!is_undefined(tempLoot[LootDrop.Sprite])) {
					tempRange[LootRange.DropCount] += 1;
					tempLoot[LootDrop.Chance] = tempRange;
					rangedLootTable[j] = tempLoot;
				}
			}
		}
		maxLootCount--;
	}
	
	var itemData = scr_items_data();
	var dataCount = array_length_1d(itemData);
	
	// Fetch item data and return dropped loot
	for (j = 0; j < lootTableSize; j++) {
		tempLoot = rangedLootTable[j];
		tempRange = tempLoot[LootDrop.Chance];
		if (tempRange[LootRange.DropCount] > 0) {
			for (k = 0; k < dataCount; k++) {
				tempData = itemData[k];
				if (tempLoot[LootDrop.Sprite] == tempData[ItemData.Sprite]) {
					//Set new count
					tempData[ItemData.Count] = tempRange[LootRange.DropCount];
					ds_list_add(lootDrops, tempData);
					k = (dataCount - 1);
				}
			}
		}
	}
}

return lootDrops;