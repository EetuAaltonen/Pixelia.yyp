var data = argument0;
var count = argument1;
var randomX, randomY;
var instance;

//Calculate Drop Point
randomX = irandom_range(1, 2);
if (randomX == 1) {
	randomX = irandom_range(10, 20);
} else if (randomX == 2) {
	randomX = irandom_range(-20, -10);
} else {
	show_message(string("Error: " + randomX + " was wrong value!"));
}
randomY = irandom_range(-5, -8);

instance = instance_create(obj_player.x + randomX, obj_player.y + randomY, obj_dropped_item);
instance.data = data;
instance.data[ItemData.Count] = count;