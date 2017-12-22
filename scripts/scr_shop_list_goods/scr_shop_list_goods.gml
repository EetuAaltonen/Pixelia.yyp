//listOfItems = scr_shop_get_goods();

if (updateValues) {
	ds_list_clear(listOfItems);
	if (listOfshop == "null") {
		listOfshop = ds_list_create();
		var tempList = ds_list_create();
		var tempArray = scr_items_data();
		var arraySize = array_length_1d(tempArray);
		var a;
		for (a = 0; a < arraySize; a++) {
			ds_list_add(tempList, tempArray[a]);	
		}
		ds_list_copy(listOfshop, tempList);
		ds_list_destroy(tempList);
	}
		
	if (filter != "") {
		//Filter
		ds_list_copy(listOfItems, scr_item_filter(listOfshop, filter));
		listSize = ds_list_size(listOfItems);
	} else {
		ds_list_copy(listOfItems, listOfshop);
	}
}
scr_list_items(listOfItems);