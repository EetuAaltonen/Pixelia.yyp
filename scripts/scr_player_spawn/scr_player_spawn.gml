var i;
var a;
var arraySize;
var spawner = "null";
var defaultSpawner = "null";
var objSpawner;

//Search A Spawner To Spawn
var count = instance_number(obj_spawner);
for (i = 0; i < count; i++) {
	objSpawner = instance_find(obj_spawner, i);
	arraySize = array_length_1d(objSpawner.spawnPoints);
	
	for (a = 0; a < arraySize; a++) {
		//show_message(string(objSpawner.spawnPoints[a]) + " == " + string(global.previousRoom));
		if (string(objSpawner.spawnPoints[a]) == string(global.previousRoom)) {
			spawner = objSpawner;
			break;
		}
	}
	
	if (spawner != "null") {
		break;	
	}	
}
	
if (spawner != "null") {
	x = spawner.x;
	y = spawner.y;
} else if (defaultSpawner != "null") {
	x = defaultSpawner.x;
	y = defaultSpawner.y;
} else {
	var nearSpawner = instance_nearest(x, y, obj_spawner);
	x = nearSpawner.x;
	y = nearSpawner.y;
}

image_xscale = global.playerHeading;