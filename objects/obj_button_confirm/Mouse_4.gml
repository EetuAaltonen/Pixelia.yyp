///Confirm
/// TODO: Confirm skill purchase
/*
if (visible) {
	if (action == "confirm") {
		if (global.hudState == HudStates.Skills) {
			show_message(string(obj_inventory_controller.globalPrimaryAttributesValues) + " > " + string(global.skillPrimaryAttributesValues));
			var arrayLength = array_length_1d(global.skillPrimaryAttributesValues);
			for (var i = 0; i < arrayLength; i++) {
				global.skillPrimaryAttributesValues[i] = obj_inventory_controller.globalPrimaryAttributesValues[i];
			}
			global.skillPoints = obj_inventory_controller.globalSkillPoints;
			show_message(string(obj_inventory_controller.globalPrimaryAttributesValues) + " > " + string(global.skillPrimaryAttributesValues));
		}
	} else {
		if (global.hudState == HudStates.Skills) {
			obj_inventory_controller.globalPrimaryAttributesValues = global.skillPrimaryAttributesValues;
			obj_inventory_controller.globalSkillPoints = global.skillPoints;
		}
	}
}