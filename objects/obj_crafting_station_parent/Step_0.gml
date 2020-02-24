var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

// Open crafting
if (scr_interact_with_player()) {
    if (global.hudAction != hudAction) {
		scr_set_global_hud_state(HudStates.Crafting);
		scr_set_global_hud_action(hudAction);
		
        // Create Slots
		scr_crafting_create_slots(hudAction);
		// Close Button
        // TODO: Need for close button?
		//instance_create(viewX + 400, viewY + 54, obj_crafting_close_button);
        // Recipe Book
        instance_create(viewX + 518, viewY + 80, obj_recipe_book);
		
		scr_inventory_reset_values();
		obj_player.actionState = Actions.Craft;
    }
} else if (global.hudAction == hudAction &&
			scr_keys_to_close(HudStates.Crafting)) {
	// Close crafting
	scr_crafting_close();
}