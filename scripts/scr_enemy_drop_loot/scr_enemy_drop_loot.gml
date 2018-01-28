/*loot = {
	enemies; 0
	loot; 1
	count; 2
	rarity; 3
}*/
var data = argument0;
if (data[1] != "null") {
	var rarity = data[3];
	var rng = 1;
	if (rarity > 1) {
		rng = irandom_range(1, rarity+1);
	}
	if (rng == 1) {
		data = scr_item_search_data(data[1], "name");

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

		instance_create(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item);
		(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).data = data;
	}
}