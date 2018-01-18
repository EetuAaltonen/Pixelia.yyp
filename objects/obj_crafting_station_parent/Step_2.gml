var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
///Open crafting
if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1)) {
	canOpenClose = false;
	if (instance_exists(obj_use)) {
        with (obj_use) instance_destroy();
    }
    if (global.hudState != hudState) {
        //Create Slots
		scr_crafting_create_slots(hudState);
		//Close Button
        instance_create(viewX+400, viewY+54, obj_crafting_close_button);
        //Recipe Book
        instance_create(viewX+450, viewY+90, obj_recipe_book);
		
		var controller = obj_inventory_controller;
		controller.updateValues = true;
		controller.pageIndex = 1;
		
		scr_set_global_hudstate(hudState);
    }
} else if (global.hudState == hudState && scr_keys_to_close()) {
	//Close crafting
	scr_crafting_close();
}