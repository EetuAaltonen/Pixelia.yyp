if (action == "increase") {
	image_index = 0;
} else {
	image_index = 1;
}

scr_check_set_hud_state(setHudState);

//Visibility
var invController = obj_inventory_controller;
if (action == "increase") {
	if (global.hudState == "inventorySkills") {
		if (invController.globalSkillPoints > 0) {
			visible = true;
		} else {
			visible = false;
		}
	}
} else {
	if (global.hudState == "inventorySkills") {
		if (invController.globalPrimaryAttributesValues[index] > global.skillPrimaryAttributesValues[index]) {
			visible = true;
		} else {
			visible = false;
		}
	}
}