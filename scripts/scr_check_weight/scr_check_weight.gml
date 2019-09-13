if (!moveToPlayer) {
    if (scr_inventory_check_capacity(weight, true)) {
        //Move To Player
        moveToPlayer = true;
    } else {
        alarm[1] = 50;
    }
}
