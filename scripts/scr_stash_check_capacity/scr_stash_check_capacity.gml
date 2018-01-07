var weight = argument0;
if ((global.totalStashCapacity + weight) > (global.maxStashCapacity + global.stashCapacityPlus)) {
    scr_add_new_toast("Stash is full!");
    return false;
}
return true;