//listOfItems = scr_shop_get_goods();
if (updateValues) {
	ds_list_clear(listOfshop);
	scr_copy_ds_list(listOfshop, scr_list_item_name_filter(scr_list_category_filter(global.inventory), filter), false);
	//Create Listed Items
	scr_inventory_create_listed_items();
}
scr_list_items(listOfshop);