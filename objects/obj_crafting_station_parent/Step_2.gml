var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
///Open crafting
if (scr_interact_with_player()) {
	canOpenClose = false;
    if (global.hudAction != hudAction) {
        //Create Slots
		scr_crafting_create_slots(hudAction);
		//Close Button
        instance_create(viewX+400, viewY+54, obj_crafting_close_button);
        //Recipe Book
        instance_create(viewX+450, viewY+90, obj_recipe_book);
		
		var controller = obj_inventory_controller;
		controller.updateValues = true;
		controller.pageIndex = 1;
		
		scr_set_global_hud_action(hudAction);
    }
} else if (global.hudAction == hudAction && scr_keys_to_close()) {
	//Close crafting
	scr_crafting_close();
}