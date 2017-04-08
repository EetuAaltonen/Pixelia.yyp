///Draw equipped mark
draw_self();
/*if (global.hudState == "inventory1" || global.hudState == "inventoryEquipments")
{
    if (typeId == 5)
    {    
        var subimg = 0;
        if (equipped == true)
        {
            subimg = 1;
        }
        draw_sprite(spr_list_item_equipped_mark, subimg,
        x+((bbox_right + 1 - bbox_left)/2)-2, y+((bbox_bottom+1-bbox_top)/2)-2);
    }
}
