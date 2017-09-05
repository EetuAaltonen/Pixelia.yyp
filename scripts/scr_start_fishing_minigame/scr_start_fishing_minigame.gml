if (instance_exists(obj_fishing_bobber)) {
	obj_fishing_bobber.catchFish = true;
	obj_fishing_bobber.alarm[4] = obj_fishing_bobber.bobberSpeed;
	obj_fishing_bobber.alarm[6] = obj_fishing_bobber.bobberRotateSpeed;
}