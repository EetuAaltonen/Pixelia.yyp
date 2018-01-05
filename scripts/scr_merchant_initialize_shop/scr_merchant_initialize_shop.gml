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
}*/

switch(type) {
	case "blacksmith": {
		/*if (global.level < 10) {
			...
		}*/
		shop = ds_list_create();
		
		var tempList = ds_list_create();
		var tempArray = scr_items_data();
		var arraySize = array_length_1d(tempArray);
		var i;
		var item;
		
		for (i = 0; i < arraySize; i++) {
			item = tempArray[i];
			if (string_pos(type, item[2]) != 0) {
				item[3] = irandom_range(1, 10);
				ds_list_add(tempList, tempArray[i]);
			}
		}
		
		scr_copy_ds_list(shop, tempList, true);
		ds_list_destroy(tempList);
	}break;
}