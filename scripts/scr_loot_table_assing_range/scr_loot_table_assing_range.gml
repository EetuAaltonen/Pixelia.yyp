/// @desc Assign each item a range of loot table
/// @param lootTable - Array of loot table
/// @return Array - Ranged loot table with total probability

var lootTable = argument0;

var lootTableSize = array_length_1d(lootTable);
var rangedLootTable = array_create(lootTableSize);

var totalProbability = 1;
var tempLoot, rangeMax, i;

for (i = 0; i < lootTableSize; i++) {
	tempLoot = lootTable[i];
	// Assing a new chance range depending on previous loot chances
	rangeMax = totalProbability + tempLoot[LootDrop.Chance] - 1;
	// Check if item is always dropped
	if (tempLoot[LootDrop.Chance] == -1) {
		rangeMax = -1;
	}
	rangedLootTable[i] = [
		tempLoot[LootDrop.Sprite],
		[totalProbability, rangeMax, 0]
	];
	totalProbability = (totalProbability + tempLoot[LootDrop.Chance]);
}

return [rangedLootTable, --totalProbability];