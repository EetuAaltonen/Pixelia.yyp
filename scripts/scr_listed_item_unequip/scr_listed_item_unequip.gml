if (equipmentIndex != undefined) {
	//Unequip
	if (equipmentIndex > -1) {
		global.equipments[equipmentIndex] = "";
		equipmentIndex = -1;
		//Remove buff
		scr_plr_effects_remove(data[7]);
		//Check if some equipment's effect turn on
		scr_plr_effects_in_queue();
	}
}