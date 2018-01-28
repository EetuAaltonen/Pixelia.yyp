var sourceList;
ds_list_clear(listOfItems);
if (global.hudState == "inventoryBackpack" ||
	global.hudState == "inventoryEquipments" ||
	global.hudState == "shopSell" ||
	global.hudState == "stashDeposit" ||
	scr_hud_state_some_of_crafting()) {
	sourceList = global.inventory;
} else if (global.hudState == "shopBuy") {
	sourceList = listOfShop;
} else if (global.hudState == "stashWithdraw") {
	sourceList = global.stash;	
}

scr_copy_ds_list(listOfItems, scr_list_item_name_filter(scr_list_category_filter(sourceList), filter), false);