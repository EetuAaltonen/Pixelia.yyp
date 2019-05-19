//Remove Listed Items
if (instance_exists(obj_listed_item)) {
	with (obj_listed_item) instance_destroy();	
}
//Remove Listed Equipment
if (instance_exists(obj_listed_equipment)) {
	with (obj_listed_equipment) instance_destroy();	
}