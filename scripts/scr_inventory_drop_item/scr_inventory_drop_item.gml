//scr_item_info_struct()

var data = argument0;
var count = argument1;

if (instance_exists(obj_player)) {
	//Remove From Inventory
	scr_inventory_add_item(data, count);
	
	//Check if count <= 0
	if ((data[ItemData.Count] - count) <= 0) {
		//Unequip if equipped
		scr_listed_item_unequip();	
	}
	
	//Add Toast
	scr_add_new_toast(data[1] + " dropped");
	
	//Calculate Drop Point
	var x_random, y_random;
	x_random = irandom_range(1, 2);
	x_random = round(x_random);
	if (x_random == 1) {
		x_random = irandom_range(10, 20);
	} else if (x_random == 2) {
		x_random = irandom_range(-20, -10);
	} else {
		show_message(string("Error: " + x_random + " was wrong value!"));
	}
	y_random = -5;
	
	//Create Dropped Item
	var instance = instance_create(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item);
	instance.data = data;
	instance.data[ItemData.Count] = abs(count);
	
	controller.updateValues = true;
}