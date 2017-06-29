var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
///Open crafting
if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1))
{
	canOpenClose = false;
	if (instance_exists(obj_use)) {
        with (obj_use) instance_destroy();
    }
    if (global.hudState != hudState) {
        //Create slots
        instance_create(viewX+300, viewY+117, obj_crafting_slot_1);
        instance_create(viewX+300, viewY+147, obj_crafting_slot_2);
        instance_create(viewX+300, viewY+177, obj_crafting_slot_3);
        instance_create(viewX+350, viewY+147, obj_crafting_slot_4);
        //Created item slot
        instance_create(obj_crafting_slot_4.x, obj_crafting_slot_4.y, obj_crafted_item);
        instance_create(viewX+400, viewY+54, obj_crafting_close_button);
        
        global.hudState = hudState;
		
		if (instance_exists(obj_player)) {
			obj_player.action_state = "crafting";
		}
		
		instance_create(viewX+450, viewY+90, obj_recipe_book);
        
        obj_crafting_controller.pageUpdate = true;
        obj_crafting_controller.current_page = 0;
    }
}

