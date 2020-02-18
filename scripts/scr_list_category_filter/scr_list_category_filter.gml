//scr_item_info_struct()

var list = argument0;
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
if (!is_undefined(category)) {
	var tempList = ds_list_create();
	var listSize = ds_list_size(list);
	var data;
	var i;
	for	(i = 0; i < listSize; i++) {
		data = ds_list_find_value(list, i);
		if (string_pos(category, data[ItemData.Type])) {
			ds_list_add(tempList, data);
		}
	}
	return tempList;
}
return list;