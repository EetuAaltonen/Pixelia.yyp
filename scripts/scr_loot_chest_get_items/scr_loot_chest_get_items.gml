/*
* @param lootType string
*
* @return items array
*/

//scr_item_info_struct()

var lootType = argument0;

var loot = ds_list_create();
var lootTable = scr_get_loot_table(lootType);
var lootCount = array_length_1d(lootTable);
var tempLoot;

var itemData = scr_items_data();
var dataCount = array_length_1d(itemData);
var tempData;
var i, j;

for (i = 0; i < lootCount; i++) {
	tempLoot = lootTable[i];
	if (tempLoot[1] <= 0) { continue; }
	for (j = 0; j < dataCount; j++) {
		tempData = itemData[j];
		if (tempLoot[ItemData.Sprite] == tempData[ItemData.Sprite]) {
			tempData[ItemData.Count] = tempLoot[1]; //Set new count
			ds_list_add(loot, tempData);
			j = dataCount-1;
		}
	}
}

return loot;