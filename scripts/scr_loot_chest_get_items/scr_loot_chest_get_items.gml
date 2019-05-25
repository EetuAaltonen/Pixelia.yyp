/*
* @param lootType string
*
* @return items array
*/

//scr_item_info_struct()

var lootType = argument0;

var loot = [];
var lootTable = scr_get_loot_table(lootType);
var lootCount = array_length_1d(lootTable);
var tempLoot;

array_copy(loot, 0, lootTable, 0, lootCount);

var itemData = scr_items_data();
var dataCount = array_length_1d(itemData);
var tempItem;
var i, j;

for (i = 0; i < lootCount; i++) {
	tempLoot = lootTable[i];
	/*type*/
	for (j = 0; j < dataCount; j++) {
		tempItem = itemData[j];
		if (tempLoot[0] == tempItem[0]) {
			tempItem[3] = tempLoot[1]; //Set new count
			loot[i] = tempItem;
			break;
		}
	}
	if (loot[i] == lootTable[i]) { show_message(lootTable[i] + " not found!"); } 
}

return loot;