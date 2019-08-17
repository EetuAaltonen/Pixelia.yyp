var sourceList = ds_list_create();
ds_list_clear(listOfItems);
if ((global.hudState == HudStates.Inventory && (global.hudAction == HudActions.Backpack || global.hudAction == HudActions.Equipment)) ||
	(global.hudState == HudStates.Shop && global.hudAction == HudActions.Sell) ||
	(global.hudState == HudStates.Stash && global.hudAction == HudActions.Deposit) ||
	global.hudState == HudStates.Crafting) {
	sourceList = global.inventory;
} else if (global.hudState == HudStates.Shop && global.hudAction == HudActions.Buy) {
	sourceList = listOfShop;
} else if (global.hudState == HudStates.Shop && global.hudAction == HudActions.Withdraw) {
	sourceList = global.stash;	
}
scr_ds_list_copy(listOfItems, scr_list_item_name_filter(scr_list_category_filter(sourceList), filter), false);