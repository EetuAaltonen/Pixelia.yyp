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
			//Remove Listed Items
			scr_listed_item_remove();
			
			//Remove Search Box
			scr_hud_search_box_remove();

			scr_savegame();
		}
	} else {
		//global.hudState = hudState;
		scr_set_global_hudstate(hudState);
		
		//Remove Search Box
		scr_hud_search_box_remove();
		
		//Remove Listed Items
		scr_listed_item_remove();
		
		obj_inventory_controller.updateValues = true;
	}
}