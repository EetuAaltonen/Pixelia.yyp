image_speed = 0;

target_x = "null";
target_y = "null";

distance_to_goal = 0;
destination = "null";

alarm[1] = 20;
path = path_add();

var i;
var count = instance_number(obj_map_object);
var object;
for (i = 0; i < count; i++) {
	object = instance_find(obj_map_object, i);
	if (object.destination == room) {
		target_x = object.x;
		target_y = object.y;
		break;	
	}
}

if (target_x == "null") {
	target_x = __view_get( e__VW.XView, 0 ) + 10;
	target_y = __view_get( e__VW.YView, 0 ) + 10;
}

x = target_x;
y = target_y;