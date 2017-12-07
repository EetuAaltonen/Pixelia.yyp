var invController = obj_inventory_controller;
var attribute;
if (visible == true) {
	if (global.hudState == "inventorySkills") {
		attribute = invController.globalPrimaryAttributesValues[index];
		if (action == "increase") {
			attribute[1] += 1;
			invController.globalPrimaryAttributesValues[index] = attribute;
			invController.globalSkillPoints -= 1;
		} else {
			if (attribute > global.skillPrimaryAttributesValues[index]) {
				attribute[1] -= 1;
				invController.globalPrimaryAttributesValues[index] = attribute;
				invController.globalSkillPoints += 1;
			}
		}
	}
	/*if (obj_button_confirm.value < obj_button_confirm.item_count) {
		obj_button_confirm.value += 1;
		alarm[1] = 40;
	}*/

	/*if (obj_button_confirm.value > 0) {
		obj_button_confirm.value -= 1;
		alarm[1] = 40;
	}*/
}