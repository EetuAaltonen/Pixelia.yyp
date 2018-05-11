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
		var i;
		var slot = obj_crafting_slot;
		var xPos = [300, 340, 300, 340, 300, 340];
		var yPos = [120, 120, 150, 150, 180, 180];
		var slotCount = array_length_1d(xPos);
		for (i = 0; i < slotCount; i++) {
			instance_create(viewX+xPos[i], viewY+yPos[i], slot);
			(instance_nearest(viewX+xPos[i], viewY+yPos[i], slot)).index = i;
			(instance_nearest(viewX+xPos[i], viewY+yPos[i], slot)).depth = tempDepth;	
		}
        //Created Product Slot
        instance_create(viewX+420, viewY+150, obj_crafting_product);
		(instance_nearest(viewX+420, viewY+150, obj_crafting_product)).depth = tempDepth;
	}break;
}