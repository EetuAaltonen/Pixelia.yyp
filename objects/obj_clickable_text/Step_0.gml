/*Recipe {
	material1; 0
	material2; 1
	material3; 2
	product; 3
	count; 4
}*/

if (text[0] == "" && recipe != "null") {
	text = ["","",""];
	material = ["null", "null", "null"];
	text[0] = recipe[0];
	material[0] = scr_inventory_search_item(recipe[0]);
	
	if (recipe[1] != "") {
		text[1] = " + " + recipe[1];
		material[1] = scr_inventory_search_item(recipe[1]);
	}
	
	if (recipe[2] != "") {
		text[2] = " + " + recipe[2];
		material[2] = scr_inventory_search_item(recipe[2]);
	}
	
	text[3] = " ---> " + string(recipe[4]) + "x " + recipe[3];
}
/*if (global.hudState == HudStates.Null) {
	instance_destroy();
}*/