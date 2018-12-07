if (updateValues) {
	ds_list_clear(listOfItems);
	if (filter != "") {
		//Filter
		scr_ds_list_copy(listOfItems, scr_list_item_name_filter(global.stash, filter), false);
	} else {
		scr_ds_list_copy(listOfItems, global.stash, false);
	}
}

//Draw Info
scr_draw_info();