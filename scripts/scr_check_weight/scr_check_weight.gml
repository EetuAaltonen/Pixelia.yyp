if (moveToPlayer == false)
{
    if ((global.max_item_weight - global.total_item_weight) - weight < 0)
    {
        scr_add_new_toast("Inventory is full!");
        alarm[1] = 50;
    }
    else
    {
        //Weight
        moveToPlayer = true;
    }
}
