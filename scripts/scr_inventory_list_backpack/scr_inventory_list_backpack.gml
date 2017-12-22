if (updateValues) {
	ds_list_clear(listOfItems);
	if (filter != "") {
		//Filter
		ds_list_copy(listOfItems, scr_item_filter(global.inventory, filter));
	} else {
		ds_list_copy(listOfItems, global.inventory);
	}
}

scr_list_items(listOfItems);