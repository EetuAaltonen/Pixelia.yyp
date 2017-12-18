///Draw equipped mark
if (sprite_index) {
	draw_self();
}
if (global.hudState == "inventoryBackpack" || global.hudState == "inventoryEquipments") {
    if (string_pos("inventoryEquipments", type)) {    
        var subimg = 0;
        if (equipped == true) {
            subimg = 1;
        }
        draw_sprite(spr_list_item_equipped_mark, subimg,x+10, y+6);
    }
}
