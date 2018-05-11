/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
	requiredLevel; 9
}*/

shop = ds_list_create();
		
var tempList = ds_list_create();
var finalList = ds_list_create();
var itemsData = scr_items_data();
var arraySize = array_length_1d(itemsData);
var i;
var item;
var indx;
	
//Search All Items Of The Same Type With Merchant
for (i = 0; i < arraySize; i++) {
	item = itemsData[i];
	if (string_pos(type, item[2]) != 0 && (global.level+levelMargin) >= item[9]) {
		item[3] = irandom_range(1, 10);
		//ds_list_add(tempList, item);
		ds_list_add(finalList, item);
	}
}

//Randomly Select Items From tempList
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

//Sort List
scr_ds_list_sort_by_object(finalList, 1, true);
	
scr_ds_list_copy(shop, finalList, true);

//Destroy Temp Lists
ds_list_destroy(tempList);
ds_list_destroy(finalList);