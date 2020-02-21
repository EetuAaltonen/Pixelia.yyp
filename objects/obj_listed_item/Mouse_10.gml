// Set inventory info text
if (!controller.updateValues && !updateValues) {
	if (!is_undefined(infoText)) {
		if (global.hudState != HudStates.Crafting) {
			obj_inventory_controller.itemInfoText = infoText;
		}
	}
}