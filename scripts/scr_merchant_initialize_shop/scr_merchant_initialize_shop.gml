//scr_item_info_struct()

shop = ds_list_create();

var finalList = ds_list_create();
var itemsData = scr_items_data();
var arraySize = array_length_1d(itemsData);
var i;
var item;
	
//Search All Items Of The Same Type With Merchant
for (i = 0; i < arraySize; i++) {
	item = itemsData[i];
	if (string_pos(type, item[ItemData.Type]) != 0 && (global.level+levelMargin) >= item[ItemData.RequiredLevel]) {
		scr_ds_list_add_item(item, 9999/*irandom_range(1, 10)*/, finalList);
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
	
scr_ds_list_copy(shop, finalList, true);