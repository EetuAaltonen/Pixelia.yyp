if (!moveToPlayer) {
    if (scr_inventory_check_capacity(weight)) {
        //Move To Player
        moveToPlayer = true;
    } else {
        scr_add_new_toast("Inventory is full!");
        alarm[1] = 50;
    }
}
