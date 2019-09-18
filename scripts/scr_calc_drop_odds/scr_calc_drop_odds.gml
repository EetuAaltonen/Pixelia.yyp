var lootCategory = argument0;
var maxLootCount = argument1;

var lootTable = scr_loot_tables(lootCategory);
var lootList = ds_list_create();
var i, tempLoot;
for (i = 0; i < maxLootCount; i++) {
	tempLoot = lootTable[i];
	if (random(1) >= round(tempLoot[LootDrop.Chance])) {
		ds_list_add(lootList, tempLoot);
	}
}