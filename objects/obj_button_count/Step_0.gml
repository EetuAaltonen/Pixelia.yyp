/// TODO: Increase count
/*if (action == "increase") {
	image_index = 0;
} else {
	image_index = 1;
}

scr_check_set_hud_state(setHudState);

//Visibility
var invController = obj_inventory_controller;
if (global.hudState == HudStates.Skills) {
	if (action == "increase") {
		if (invController.globalSkillPoints > 0) {
			visible = true;
		} else {
			visible = false;
		}
	} else {
		if (invController.globalPrimaryAttributesValues[index] != global.attributes[index]) {
			visible = true;
		} else {
			visible = false;
		}
	}
}