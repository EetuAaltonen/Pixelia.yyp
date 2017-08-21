var invController = obj_inventory_controller;
if (visible == true) {
	if (action == "increase") {
		if (global.hudState == "inventorySkills") {
			invController.globalPrimaryAttributesValues[index] += 1;
			invController.globalSkillPoints -= 1;
		}
		/*if (obj_button_confirm.value < obj_button_confirm.item_count) {
		    obj_button_confirm.value += 1;
		    alarm[1] = 40;
		}*/
	} else {
		if (global.hudState == "inventorySkills") {
			if (invController.globalPrimaryAttributesValues[index] > global.skillPrimaryAttributesValues[index]) {
				invController.globalPrimaryAttributesValues[index] -= 1;
				invController.globalSkillPoints += 1;
			}
		}
		/*if (obj_button_confirm.value > 0) {
		    obj_button_confirm.value -= 1;
		    alarm[1] = 40;
		}*/
	}
}