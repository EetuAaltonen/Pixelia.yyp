if (!global.popUp) {	
	var recipeBookOpen = false;
	if (instance_exists(obj_recipe_book)) {
		if (obj_recipe_book.showRecipeBook) {
			recipeBookOpen = true;
		}
	}

	if (selected == false && !recipeBookOpen) {
		if (txt == place_holder) {
		    keyboard_string = "";
		} else {
		    keyboard_string = txt;
		}
		selected = true;
		alarm[1] = 1;
	} else {
		keyboard_string = "";
		blink_icon = "";
		selected = false;
	}
}