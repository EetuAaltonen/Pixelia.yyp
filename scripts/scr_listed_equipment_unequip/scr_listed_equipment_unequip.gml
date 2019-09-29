//Unequip
if (equipmentIndex > -1) {
	var tempItem = global.equipment[equipmentIndex];
	global.equipment[equipmentIndex] = "";
	
	scr_listed_item_update_status(equipmentIndex);
	
	if (tempItem[7] != "null") {
		//Remove buff
		scr_plr_effects_remove(tempItem[7]);
		//Check if some equipment's effect turn on
		scr_plr_effects_in_queue();
	}
	//DO NOT RESET equipmentIndex!
	itemImage = "null";
	//Add Toast
	scr_add_new_toast(tempItem[1] + " unequipped");
}