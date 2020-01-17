/// @desc Calculate loot drops with specified loot category
/// @param lootConfigs - Array of loot categories and max loot counts
/// @return ds_list - Loots

var lootConfigs = argument0;

var lootDrops = ds_list_create();

var lootTables = scr_loot_table_init(lootConfigs);
var lootTableCount = ds_list_size(lootTables);

var tempLootTable, lootTableSize;
var rangedLootConfig, rangedLootTable;
var maxLootCount, totalProbability
var i, j;

for (i = 0; i < lootTableCount; i++) {
	tempLootTable = ds_list_find_value(lootTables, i);
	
	rangedLootConfig = scr_loot_table_assing_range(tempLootTable[0]);
	maxLootCount = tempLootTable[LootConfig.MaxLootCount];
	rangedLootTable = rangedLootConfig[RangedLootConfig.LootTable];
	totalProbability = rangedLootConfig[RangedLootConfig.TotalProbability];
	
	lootTableSize = array_length_1d(rangedLootTable);
	
	var tempLoot, tempRange;
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
					// Calculate coins with 100% chance
					if (tempLootTable[LootConfig.Category] == LootTable.Coin) {
						tempRange[LootRange.DropCount] = maxLootCount;
						maxLootCount = 0;
					} else {
						tempRange[LootRange.DropCount] += 1;
					}
					tempLoot[LootDrop.Chance] = tempRange;
					rangedLootTable[j] = tempLoot;
				}
			}
		}
		maxLootCount--;
	}
	
	// Fetch item data
	lootDrops = scr_loot_table_fetch_data(rangedLootTable, lootDrops);
}

return lootDrops;