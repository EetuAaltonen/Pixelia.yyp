if (updateValues) {
	ds_list_clear(listOfItems);
	if (filter != "") {
		//Filter
		scr_copy_ds_list(listOfItems, scr_item_filter(global.inventory, filter), false);
	} else {
		scr_copy_ds_list(listOfItems, global.inventory, false);
	}
}

scr_list_items(listOfItems);