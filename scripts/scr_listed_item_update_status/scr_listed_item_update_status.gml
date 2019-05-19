var equipmentIndex = argument0;
if (instance_exists(obj_listed_item)) {
	var i;
	var listedItem;
	var itemCount = instance_number(obj_listed_item);
	for (i = 0; i < itemCount; i++) {
		listedItem = instance_find(obj_listed_item, i);
		if (listedItem.equipmentIndex == equipmentIndex) {
			listedItem.updateValues = true;
		}
	}
}