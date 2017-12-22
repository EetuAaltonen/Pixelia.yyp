/*//scr_inventory_check_capacity(argument0)
var itemsWeight = argument0;
var freeSpace = false;
if (itemsWeight > 0) {
	if (((global.max_item_weight + global.carryingCapacityPlus) - global.total_item_weight) - itemsWeight > 0) {
		freeSpace = true;
	}
}

return freeSpace;