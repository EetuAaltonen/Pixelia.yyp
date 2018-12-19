//scr_item_info_struct()

var data = argument0;
if (instance_exists(obj_dropped_item)) {
	var droppedItemCount = instance_number(obj_dropped_item);
	var droppedItem;
	var maxDistance = 30;
	var i;
	for (i = 0; i < droppedItemCount; i++) {
		droppedItem = instance_find(obj_dropped_item, i);
		if (droppedItem.id != id) {
			if (distance_to_point(droppedItem.x, droppedItem.y) <= maxDistance) {
				if (scr_item_compare_items(data, droppedItem.data, "full")) {
					droppedItem.data[3] += data[3];
					droppedItem.count = droppedItem.data[3];
					return true;
				}
			}
		}
	}
}
return false;