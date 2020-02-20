/// @desc Filter items by category
/// @param itemList - List of items
/// @return List - Filtered list

var itemList = argument0;
var category = undefined;
if (global.hudState == HudStates.Crafting) {
	switch(global.hudAction) {
		case HudActions.Alchemy: { category = "alchemy"; }break;
		case HudActions.Anvil: { category = "anvil"; }break;
		case HudActions.Cooking: { category = "cooking"; }break;
		case HudActions.Forge: { category = "forge"; }break;
		case HudActions.Furnace: { category = "furnace"; }break;
		case HudActions.SpinningWheel: { category = "spinningWheel"; }break;
		case HudActions.WaterWell: { category = "waterWell"; }break;
		case HudActions.Workbench: { category = "workbench"; }break;
	}
} else {
	if (global.hudAction == HudActions.Equipment ||
		global.hudAction == HudActions.Repair) {
		category = "equipment";
	}
}

var filteredList = ds_list_create();
if (is_undefined(category)) {
	scr_ds_list_copy(filteredList, itemList, false);
} else {
	var listSize = ds_list_size(itemList);
	var i, data;
	for	(i = 0; i < listSize; i++) {
		data = ds_list_find_value(itemList, i);
		if (string_pos(category, data[ItemData.Type])) {
			ds_list_add(filteredList, data);
		}
	}
}
return filteredList;