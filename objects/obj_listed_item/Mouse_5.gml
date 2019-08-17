if (!obj_inventory_controller.updateValues) {
	switch (global.hudAction) {
		case HudActions.Backpack: {
			scr_inventory_drop_item(data, -1);
		}break;
		case HudActions.Equipment: {
			scr_inventory_drop_item(data, -1);
			scr_listed_equipment_update_status(equipmentIndex);
		}break;
	}
}