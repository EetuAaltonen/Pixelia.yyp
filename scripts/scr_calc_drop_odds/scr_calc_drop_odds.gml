/// @desc Calculate loot drops with specified loot category
/// @param lootCategory - Loot category
/// @param maxLootCount - Max number of loot
/// @return ds_list - Loots

var lootCategory = argument0;
var maxLootCount = argument1;

var lootTable = scr_loot_tables(lootCategory);
var lootTableSize = array_length_1d(lootTable);
var lootList = ds_list_create();

var itemData = scr_items_data();
var dataCount = array_length_1d(itemData);
var i, j, tempLoot, tempData;

if (is_undefined(maxLootCount)) {
	maxLootCount = lootTableSize;
}

for (i = 0; i < lootTableSize; i++) {
	tempLoot = lootTable[i];
	var rng = random(1);
	if (rng <= (tempLoot[LootDrop.Chance])) {
		for (j = 0; j < dataCount; j++) {
			tempData = itemData[j];
			if (tempLoot[LootDrop.Sprite] == tempData[ItemData.Sprite]) {
				//Set new count
				if (!tempLoot[LootDrop.Count]) { tempLoot[LootDrop.Count] = 1; }
				tempData[ItemData.Count] = tempLoot[LootDrop.Count];
				ds_list_add(lootList, tempData);
				j = (dataCount - 1);
			}
		}
		if (ds_list_size(lootList) > maxLootCount) { break; }
	}
}
return lootList;