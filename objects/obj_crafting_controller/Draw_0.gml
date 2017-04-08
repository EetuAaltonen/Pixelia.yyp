///Open crafting

//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == "forge" ||
    global.hudState == "alchemy" ||
    global.hudState == "workbench")
{
    scr_list_items();
    //Crafted material info background
    draw_sprite(spr_item_info_box, 0,__view_get( e__VW.XView, 0 )+407,__view_get( e__VW.YView, 0 )+204);
}

