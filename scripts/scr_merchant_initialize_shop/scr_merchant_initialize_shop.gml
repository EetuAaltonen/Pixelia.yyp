/// @desc Initialize items for shop
/// @param shopType - Item type that shop sells
/// @param levelRange - Max difference between required level of items and player level
/// @param maxItemCount - Max count of items to sell
/// @return List - List of filtered items

var shopType = argument0;
var levelRange = argument1;
// TODO: Logic for max item count in shop
//var maxItemCount = argument2;

var shopList = ds_list_create();
var itemsData = scr_items_data();
var arraySize = array_length_1d(itemsData);
var i,item;
	
//Search All Items Of The Same Type With Merchant
for (i = 0; i < arraySize; i++) {
	item = itemsData[i];
	if (string_pos(shopType, item[ItemData.Type]) != 0 && (global.level + levelRange) >= item[ItemData.RequiredLevel]) {
		scr_ds_list_add_item(item, 9999/*irandom_range(1, 10)*/, shopList);
	}
}

// TODO: Randomly Select Items From tempList
/*var count = maxItemCount;
if (ds_list_size(tempList) < maxItemCount) {
	scr_ds_list_copy(finalList, tempList, true);
} else {
	for (i = 0; i < count; i++) {
		indx = irandom_range(0, (ds_list_size(tempList)-1));
		item = ds_list_find_value(tempList, indx);
		ds_list_add(finalList, item);
		ds_list_delete(tempList, indx);
	}
}*/
	
return shopList;