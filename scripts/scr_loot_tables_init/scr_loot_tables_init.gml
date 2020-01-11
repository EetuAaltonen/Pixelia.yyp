/// @desc Fetch loot tables with specified categories
/// @param lootConfigs - Array of loot categories and counts
/// @return ds_list - Loot tables

var lootConfigs = argument0;

var lootTables = ds_list_create();
var categoryCount = array_length_1d(lootConfigs);

var tempLootConfig, i;
for (i = 0; i < categoryCount; i++) {
	tempLootConfig = lootConfigs[i];
	
	ds_list_add(lootTables, [
		scr_loot_tables(tempLootConfig[LootConfig.Category]),
		tempLootConfig[LootConfig.MaxLootCount]
	]);
}

return lootTables;