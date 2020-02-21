if (global.hudAction != hudAction && hudAction != undefined) {
	if (hudAction == HudActions.Null) {
		var recipeBookOpen = false;
		if (instance_exists(obj_recipe_book)) {
			if (obj_recipe_book.showRecipeBook) {
				recipeBookOpen = true;
			}
		}
		if (!recipeBookOpen) {
			scr_global_hud_state_reset();

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
		//global.hudAction = hudAction;
		scr_set_global_hud_action(hudAction);
		
		//Remove Search Box
		scr_hud_search_box_remove();
		
		//Remove Listed Items
		scr_listed_item_remove();
		
		obj_inventory_controller.updateValues = true;
	}
}