/*Loot {
	data; 0
	count; 1
	rarity; 2
}*/

var loots = argument0;
var lootCount = array_length_1d(loots);
var loot;
var j;
for (j = 0; j < lootCount; j++) {
	loot = loots[j];
	
	var rarity = loot[2];
	var rng = 1;
	if (rarity > 1) {
		rng = irandom_range(1, rarity+1);
	}
	if (rng == 1) {
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
		y_random = -5;

		instance_create(x + x_random, y + y_random, obj_dropped_item);
		(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).data = loot[0];
		(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).depth = depth-1;
	}
}