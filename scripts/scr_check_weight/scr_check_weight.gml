if (moveToPlayer == false) {
    if ((global.total_item_weight + weight) > (global.max_item_weight + global.carryingCapacityPlus)) {
        scr_add_new_toast("Inventory is full!");
        alarm[1] = 50;
    } else {
        //Move To Player
        moveToPlayer = true;
    }
}
