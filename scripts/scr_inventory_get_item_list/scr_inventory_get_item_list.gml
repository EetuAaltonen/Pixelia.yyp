/// @description Get list of items by hud statement
/// @return List - List of items

var itemList = ds_list_create();
if ((global.hudState == HudStates.Inventory && (global.hudAction == HudActions.Backpack ||
	 global.hudAction == HudActions.Equipment)) ||
	(global.hudState == HudStates.Shop && global.hudAction == HudActions.Sell) ||
	(global.hudState == HudStates.Stash && global.hudAction == HudActions.Deposit) ||
	global.hudState == HudStates.Crafting) {
	itemList = global.inventory;
} else if (global.hudState == HudStates.Shop && global.hudAction == HudActions.Buy) {
	itemList = listOfShop;
} else if (global.hudState == HudStates.Stash && global.hudAction == HudActions.Withdraw) {
	itemList = global.stash;
}

return itemList;