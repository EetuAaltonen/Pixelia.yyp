switch(type) {
	case "blacksmith": {
		/*if (global.level < 10) {
			...
		}*/
		shop = ds_list_create();
		
		var tempList = ds_list_create();
		var tempArray = scr_items_data();
		var arraySize = array_length_1d(tempArray);
		var a;
		
		for (a = 0; a < arraySize; a++) {
			ds_list_add(tempList, tempArray[a]);	
		}
		
		scr_copy_ds_list(shop, tempList, true);
		ds_list_destroy(tempList);
	}break;
}