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
					droppedItem.data[ItemData.Count] += data[ItemData.Count];
					droppedItem.count = droppedItem.data[ItemData.Count];
					return true;
				}
			}
		}
	}
}
return false;