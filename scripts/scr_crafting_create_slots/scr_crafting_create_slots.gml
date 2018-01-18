var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var hudState = argument0;
var tempDepth = obj_inventory_controller.depth-1;

switch (hudState) {
	case "spinningWheel": {
        instance_create(viewX+300, viewY+150, obj_crafting_slot);
		(instance_nearest(viewX+300, viewY+150, obj_crafting_slot)).index = 0;
		(instance_nearest(viewX+300, viewY+150, obj_crafting_slot)).depth = tempDepth;
        //Created Product Slot
        instance_create(viewX+350, viewY+150, obj_crafting_product);
		(instance_nearest(viewX+350, viewY+150, obj_crafting_product)).depth = tempDepth;
	}break;
	default: {
		instance_create(viewX+300, viewY+120, obj_crafting_slot);
		(instance_nearest(viewX+300, viewY+120, obj_crafting_slot)).index = 0;
		(instance_nearest(viewX+300, viewY+120, obj_crafting_slot)).depth = tempDepth;
        instance_create(viewX+300, viewY+150, obj_crafting_slot);
		(instance_nearest(viewX+300, viewY+150, obj_crafting_slot)).index = 1;
		(instance_nearest(viewX+300, viewY+150, obj_crafting_slot)).depth = tempDepth;
        instance_create(viewX+300, viewY+180, obj_crafting_slot);
		(instance_nearest(viewX+300, viewY+180, obj_crafting_slot)).index = 2;
		(instance_nearest(viewX+300, viewY+180, obj_crafting_slot)).depth = tempDepth;
        //Created Product Slot
        instance_create(viewX+350, viewY+150, obj_crafting_product);
		(instance_nearest(viewX+350, viewY+150, obj_crafting_product)).depth = tempDepth;
	}break;
}