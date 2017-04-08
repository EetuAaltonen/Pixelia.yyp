var Ypos;
if (pageUpdate == true)
{
    Ypos = 120;
    item_count = 0;
    //Clear item info
    item_info_text = "Item info...";
    //Create search text box in inventory
    if (global.hudState == "inventory1")
    {
        instance_create(__view_get( e__VW.XView, 0 )+412, __view_get( e__VW.YView, 0 )+230, obj_menu_text_box);
    }
    
    if (instance_exists(obj_listed_item))
    {
        with (obj_listed_item) instance_destroy();
    }
    var listSize = ds_list_size(global.inventory);
    if (listSize > 0) {
        for (a = 0; a < listSize; a++) {
            var info = ds_list_find_value(global.inventory, a);
            //Create items
            if (string_pos(global.hudState, ds_list_find_value(info, 4))) {
                instance_create(view_xview+30, view_yview+Ypos, obj_listed_item);
                (instance_nearest(view_xview+30, view_yview+Ypos, obj_listed_item)).sprite_index = asset_get_index(string(ds_list_find_value(info, 0)));
				show_message((instance_nearest(view_xview+30, view_yview+Ypos, obj_listed_item)).sprite_index);
                (instance_nearest(view_xview+30, view_yview+Ypos, obj_listed_item)).itemCount = ds_list_find_value(info, 2);
                Name[item_count] = ds_list_find_value(info, 1);
                Count[item_count] = ds_list_find_value(info, 2);
                Weight[item_count] = string_format((ds_list_find_value(info, 2) * ds_list_find_value(info, 3)), 0, 2);
                item_count += 1;
                Ypos += 19;
            }
        }
    }
    //Calculate number of pages
    scr_page_calculate();
    pageUpdate = false;
}
//Background
draw_sprite(spr_inventory_background, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
if (item_count > 0)
{
    Ypos = 120;
    for (i = 0; i < item_count; i++) {
        //Item background
        draw_sprite(spr_inv_item_bg, 0,__view_get( e__VW.XView, 0 )+30, __view_get( e__VW.YView, 0 )+Ypos);        
        //Item description background
        draw_sprite(spr_inv_item_description_bg, 0,__view_get( e__VW.XView, 0 )+120, __view_get( e__VW.YView, 0 )+Ypos);
        //Item description
        draw_text(__view_get( e__VW.XView, 0 )+56,__view_get( e__VW.YView, 0 )+Ypos, string_hash_to_newline(Name[i]));
        if (global.hudState == "shop")
        {
            /*//Item price background
            draw_sprite(spr_inv_item_amount_bg, 0,view_xview+228, view_yview+Ypos);
            //Item price
            draw_text(view_xview+207,view_yview+Ypos, string(item_price_draw[i]) + "  G");*/
        }
        else
        {
            //Item amount background
            draw_sprite(spr_inv_item_amount_bg, 0,__view_get( e__VW.XView, 0 )+228, __view_get( e__VW.YView, 0 )+Ypos);
            //Item amount
            draw_text(__view_get( e__VW.XView, 0 )+207,__view_get( e__VW.YView, 0 )+Ypos, string_hash_to_newline(string(Count[i]) + "  x"));
        }
        if (string_pos("inventory", string(global.hudState)) &&
            !string_pos("Equipments", string(global.hudState)) ||
            global.hudState == "shop")
        {
            //Item weight background
            draw_sprite(spr_inv_item_amount_bg, 0,__view_get( e__VW.XView, 0 )+295, __view_get( e__VW.YView, 0 )+Ypos);
            //Item weight
            draw_text(__view_get( e__VW.XView, 0 )+274,__view_get( e__VW.YView, 0 )+Ypos, string_hash_to_newline(Weight[i] + "  Pw"));
        }
        Ypos += 19;
    }
    createOnce = false;
} else {
    //If empty
    draw_text(__view_get( e__VW.XView, 0 )+30, __view_get( e__VW.YView, 0 )+120, string_hash_to_newline("Inventory is empty..."));
}
//Page number background
draw_sprite(spr_inv_item_description_bg, 0,__view_get( e__VW.XView, 0 )+87, __view_get( e__VW.YView, 0 )+95);
//Page number max
page_max = (round(item_count/8));
if ((page_max - (item_count/8)) < 0 )
{   
    page_max += 1;
}
//Draw page number and max
if (page_max == 0)
{
    page_max = 1;
}
draw_text(__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+95, string_hash_to_newline(string("PAGE:    " + string(current_page + 1) + "  /  " + string(page_max))));
if (string_pos("inventory", string(global.hudState)) &&
    !string_pos("Equipments", string(global.hudState)) ||
    global.hudState = "shop")
{
    //Item info background
    draw_sprite(spr_inv_item_info_bg, 0,__view_get( e__VW.XView, 0 )+334, __view_get( e__VW.YView, 0 )+85);
    //Item info text
    draw_text(__view_get( e__VW.XView, 0 )+349, __view_get( e__VW.YView, 0 )+100, string_hash_to_newline(item_info_text));
    //Total and weight background
    draw_sprite(spr_inv_item_description_bg, 0,__view_get( e__VW.XView, 0 )+255, __view_get( e__VW.YView, 0 )+95);
    //Total and weight
    draw_text(__view_get( e__VW.XView, 0 )+190,__view_get( e__VW.YView, 0 )+95, string_hash_to_newline("Capacity:  " + string_format(global.total_item_weight, 0, 2) + "  /  " + string(global.max_item_weight) + "  Pw"));
}
