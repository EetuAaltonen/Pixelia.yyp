//listOfItems = scr_shop_get_goods();

if (updateValues) {	
	if (filter != "") {
		//Filter
		scr_copy_ds_list(listOfItems, scr_list_item_name_filter(listOfshop, filter), false);
	} else {
		scr_copy_ds_list(listOfItems, listOfshop, false);
	}
}
scr_list_items(listOfItems);