if (instance_exists(obj_player)) {
	var x_random, y_random, i;
	x_random = irandom_range(1, 2);
	x_random = round(x_random);
	if (x_random == 1) {
		x_random = irandom_range(10, 20);
	} else if (x_random == 2) {
		x_random = irandom_range(-20, -10);
	} else {
		show_message(string("Error: " + x_random + " was wrong value!"));
	}
	y_random = -5//irandom_range(-5, -10);

	instance_create(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item);
	(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).data = data;
			
	//Remove From Inventory
	scr_inventory_add_item(data, -1);
				
	//Remove From Equipments
	if (equipmentIndex > -1) {
		global.equipments[equipmentIndex] = "";
		equipmentIndex = -1;
	}
	
	//Add Toast
	scr_add_new_toast(data[1] + " dropped");
	
	obj_inventory_controller.updateValues = true;
}