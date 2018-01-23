if (updateValues) {
	ds_list_clear(listOfItems);
	scr_copy_ds_list(listOfItems, scr_list_item_name_filter(scr_list_category_filter(global.inventory), filter), false);
}
scr_list_items(listOfItems);