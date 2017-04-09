///Draw equipped mark
draw_self();
if (global.hudState == "inventory1" || global.hudState == "inventoryEquipments")
{
    if (string_pos("inventoryEquipments", type)) {    
        var subimg = 0;
        if (equipped == true)
        {
            subimg = 1;
        }
        draw_sprite(spr_list_item_equipped_mark, subimg,x+10, y+6);
    }
}
