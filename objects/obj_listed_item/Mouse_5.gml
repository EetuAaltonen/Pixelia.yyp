if (!obj_inventory_controller.updateValues) {
	switch (global.hudState) {
		case "inventoryBackpack": {
			scr_inventory_drop_item(data, -1);
		}break;
		case "inventoryEquipments": {
			scr_inventory_drop_item(data, -1);
			scr_listed_equipment_update_status(equipmentIndex);
		}break;
	}
}