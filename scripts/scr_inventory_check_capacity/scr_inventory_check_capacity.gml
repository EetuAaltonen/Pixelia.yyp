var weight = argument0;
var sendToaster = argument1;
if ((global.totalInventoryCapacity + weight) > (global.maxInventoryCapacity + global.carryingCapacityPlus)) {
    if (sendToaster) {
		scr_add_new_toast("Inventory is full!");
	}
    return false;
}
return true;