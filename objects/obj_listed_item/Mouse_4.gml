///Left mouse pressed
if (!obj_inventory_controller.updateValues) {
	if (scr_hud_state_some_of_crafting()) {
		scr_listed_item_left_mouse_pressed_crafting();
	} else {
		switch (global.hudState) {
			case "inventoryEquipments": {
				scr_listed_item_toggle_equip();
			}break;
			case "looting": {
				scr_listed_item_looting();
			}break;
		}
	}
}