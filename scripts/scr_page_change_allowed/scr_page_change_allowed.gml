if ((global.hudState == HudStates.Inventory && (global.hudAction == HudActions.Backpack || global.hudAction == HudActions.Equipment)) ||
	global.hudState == HudStates.Stash ||
	global.hudState == HudStates.Shop ||
	global.hudState == HudStates.Crafting) {
	
	if (instance_exists(obj_search_box)) {
		if (obj_search_box.selected) {
			return false;
		}
	}
	return true;
}
return false;