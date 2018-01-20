var weight = argument0;
if ((global.totalInventoryCapacity + weight) > (global.maxInventoryCapacity + global.carryingCapacityPlus)) {
    scr_add_new_toast("Inventory is full!");
    return false;
}
return true;