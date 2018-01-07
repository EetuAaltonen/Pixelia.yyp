if (global.hudState != hudState && hudState != "") {
	if (hudState == "null") {
		var recipeBookOpen = false;
		if (instance_exists(obj_recipe_book)) {
			if (obj_recipe_book.showRecipeBook) {
				recipeBookOpen = true;
			}
		}
		if (!recipeBookOpen) {
			scr_close_global_hudstate();

			//Destroy Buttons
			if (instance_exists(obj_hud_button)) {
				with (obj_hud_button) instance_destroy();
			}
			//Destroy Listed Items
			if (instance_exists(obj_listed_item)) {
				with (obj_listed_item) instance_destroy();
			}
			//Destroy Search Box
			if (instance_exists(obj_menu_text_box)) {
				with (obj_menu_text_box) instance_destroy();
			}

			scr_savegame();
		}
	} else {
		//global.hudState = hudState;
		scr_set_global_hudstate(hudState);
		
		//Destroy Search Box
		if (instance_exists(obj_menu_text_box)) {
			with (obj_menu_text_box) instance_destroy();
		}
		
		//Destroy Listed Items
		if (instance_exists(obj_listed_item)) {
			with (obj_listed_item) instance_destroy();
		}
		
		obj_inventory_controller.updateValues = true;
		
		/*var controller = obj_inventory_controller;
		controller.updateValues = true;
		controller.pageIndex = 1;
		controller.filter = "null";
		
		scr_set_global_hudstate(hudState);*/
	}
}