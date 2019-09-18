var i;
var a;
var arraySize;
var spawner = undefined;
var defaultSpawner = undefined;
var objSpawner;

//Search A Spawner To Spawn
var count = instance_number(obj_spawner);
for (i = 0; i < count; i++) {
	objSpawner = instance_find(obj_spawner, i);
	arraySize = array_length_1d(objSpawner.spawnPoints);
	
	for (a = 0; a < arraySize; a++) {
		if (string(objSpawner.spawnPoints[a]) == string(global.previousRoom)) {
			spawner = objSpawner;
			break;
		}
	}
	
	if (spawner != undefined) {
		break;	
	}	
}
	
if (spawner != undefined) {
	x = spawner.x;
	y = spawner.y;
} else if (defaultSpawner != undefined) {
	x = defaultSpawner.x;
	y = defaultSpawner.y;
} else {
	var nearSpawner = instance_nearest(x, y, obj_spawner);
	x = nearSpawner.x;
	y = nearSpawner.y;
}

image_xscale = global.playerHeading;